---
- hosts: all
  tasks:
  - local_action: shell paste -s -d, prep.pkgs
    register: PKGS
  - apt: pkg=${item} state=installed
    with_items: ${PKGS.stdout_lines}
