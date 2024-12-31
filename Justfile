lint:
  ansible-lint

workbench_check:
  ansible-playbook -C -D playbooks/workbench.yaml

workbench_apply:
  ansible-playbook -D playbooks/workbench.yaml

r_test:
    cd ansible_collections/devxy/core/extensions && \
    source ~/venv/ansible-molecule/bin/activate && \
    pip3 install molecule docker molecule-plugins[docker] 'ansible-core<2.17' && \
    molecule converge

r_check:
  ansible-playbook -C -D playbooks/r.yaml

r_apply:
  ansible-playbook -D playbooks/r.yaml

python_check:
  ansible-playbook -C -D playbooks/python.yaml

python_apply:
  ansible-playbook -D playbooks/python.yaml

db_drivers_check:
  ansible-playbook -C -D playbooks/db_drivers.yaml

db_drivers_apply:
  ansible-playbook -D playbooks/db_drivers.yaml

quarto_check:
  ansible-playbook -C -D playbooks/quarto.yaml

quarto_apply:
  ansible-playbook -D playbooks/quarto.yaml

system_check:
  ansible-playbook -C -D playbooks/system.yaml

system_apply:
    ansible-playbook -D playbooks/system.yaml

stop SERVER:
    hcloud server poweroff {{SERVER}}

start SERVER:
    hcloud server poweron {{SERVER}}

ansible-doctor:
    fish -c 'source ~/venv/ansible-ds-core/bin/activate.fish' && ansible-doctor roles -r

galaxy-publish:
    ansible-galaxy collection build && \
    tarball=$(ls | grep devxy-) && \
    ansible-galaxy collection install $tarball -p /Users/pjs/.ansible/collections && \
    ansible-galaxy collection publish $tarball && \
    rm $tarball

init-venv:
    python3 -m venv ~/venv/ansible-posit && \
    fish -c 'source ~/venv/ansible-posit/bin/activate.fish; python3 -m pip install ansible-doctor[ansible-core] "ansible-core<2.17" molecule-plugins[docker] cryptography'

molecule scenario:
    source ~/venv/ansible-ds-core/bin/activate.fish && cd extensions && molecule test --scenario-name {{scenario}}
