---
- hosts: all
  vars:
    WORK: /cygdrive/c/temp/vargurant
    CYGWIN_SETUP: http://cygwin.com/setup.exe
    PUTTY_ZIP: http://the.earth.li/~sgtatham/putty/latest/x86/putty.zip
  tasks:
  - local_action: shell paste -s -d" -P " windstack.pkgs
    register: PKGS
  - file: path={{WORK}} state=directory
  - get_url: url={{CYWIN_SETUP}} dest={{WORK}}
  - shell: chdir={{WORK}} cygwin -P {{PKGS.stdout}} -q -D
  - shell: chdir={{WORK}} cygwin -P {{PKGS.stdout}} -q -L
  - get_url: url={{PUTTY_ZIP}} dest={{WORK}}
  - shell: chdir=/cygdrive/c/windows/system32 unzip {{WORK}}/putty.zip
