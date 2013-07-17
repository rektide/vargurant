= Vargurant =

`Vargurant` is a Vagrant support repository.

= winbase =

`winbase` aids in setting up Windows boxes. It relies on a bare image + Cygwin, and uses Ansible provisioning by way of Vagrant to set up a box. This bootstrap ought then be packaged, and used as a box.

== Winbase Instructions ==

* Install a bare Windows vm into Virtualbox. I opted for a .vmdk format image.
* Download cygwin; http://www.cygwin.com/setup.exe
* Cygwin install can be done two ways, manually or automated. First, automated:
  * Fetch cygwin: `cygwin -P python-paramiko -P openssh -q -D`
  * Install cygwin: `cygwin -P python-paramiko -P openssh -q -L .`
  Manual:
  * `cygwin -P python-paramiko -P openssh` and complete manually
