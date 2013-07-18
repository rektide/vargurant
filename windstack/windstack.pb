---
- hosts: all
  vars:
    WORK: /cygdrive/c/temp/vargurant
    CYGWIN_SETUP: http://cygwin.com/setup.exe
  tasks:
  - local_action: shell paste -s -d" -P " windstack.pkgs
    register: PKGS
  - file: path={{WORK}} state=directory
  - get_url: url={{CYWIN_SETUP}} dest={{WORK}}
  - shell: chdir={{WORK}} cygwin -P {{PKGS.stdout}} -q -D
  - shell: chdir={{WORK}} cygwin -P {{PKGS.stdout}} -q -L
