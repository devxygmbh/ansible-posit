# ansible

## Molecule (test framework)

- Done via `venv`
- When working with RHEL8 hosts, make sure to install `ansible@9` and `ansible-core<2.17` into the `venv` which is executing `molecule`

```sh
mkdir ~/venv
python3 -m venv ~/venv/ansible-molecule
source ~/venv/ansible-molecule/bin/activate
pip3 install molecule docker molecule-plugins[docker] 'ansible-core<2.17'
```
