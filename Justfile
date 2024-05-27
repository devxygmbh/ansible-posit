lint:
  ansible-lint

workbench_check:
  ansible-playbook -C -D playbooks/workbench.yaml

workbench_apply:
  ansible-playbook -D playbooks/workbench.yaml
