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
