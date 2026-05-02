#!/usr/bin/env python3
"""Mock Artifactory: serves /posit-drivers/* from disk and forwards
/mssql-release/* to https://packages.microsoft.com/*.

This emulates a JFrog Artifactory remote/proxy repository so the
db_drivers role can be tested end-to-end against Microsoft's real
package metadata without requiring a live Artifactory instance.
"""
import http.server
import os
import socketserver
import sys
import urllib.error
import urllib.request

ROOT = '/opt/mock-artifactory'
PROXY_PREFIX = '/mssql-release/'
UPSTREAM = 'https://packages.microsoft.com'
PORT = 8080
HOP_BY_HOP = {
    'connection',
    'transfer-encoding',
    'content-encoding',
    'keep-alive',
    'proxy-authenticate',
    'proxy-authorization',
    'te',
    'trailers',
    'upgrade',
}


class Handler(http.server.SimpleHTTPRequestHandler):
    def _proxy(self):
        upstream_path = self.path[len(PROXY_PREFIX) - 1:]  # keep leading '/'
        url = f'{UPSTREAM}{upstream_path}'
        req = urllib.request.Request(url, headers={'User-Agent': 'molecule-mock'})
        try:
            with urllib.request.urlopen(req, timeout=60) as resp:
                self.send_response(resp.status)
                for k, v in resp.headers.items():
                    if k.lower() not in HOP_BY_HOP:
                        self.send_header(k, v)
                self.end_headers()
                self.wfile.write(resp.read())
        except urllib.error.HTTPError as e:
            self.send_error(e.code, e.reason)
        except Exception as e:
            self.send_error(502, str(e))

    def do_GET(self):
        if self.path.startswith(PROXY_PREFIX):
            self._proxy()
        else:
            super().do_GET()

    def do_HEAD(self):
        if self.path.startswith(PROXY_PREFIX):
            self._proxy()
        else:
            super().do_HEAD()


if __name__ == '__main__':
    os.chdir(ROOT)
    socketserver.TCPServer.allow_reuse_address = True
    with socketserver.TCPServer(('', PORT), Handler) as httpd:
        sys.stderr.write(f'mock-artifactory listening on :{PORT}\n')
        httpd.serve_forever()
