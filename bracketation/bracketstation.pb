---
- hosts: all
  gather_facts: False
  vars:
  - BRACKETS_URL: http://download.brackets.io/file.cfm?platform=WIN&build=27
  tasks:
  - file: path=/cygdrive/c/temp state=directory
  - get_url: url={{BRACKETS_URL}} dest=/cygdrive/c/temp
