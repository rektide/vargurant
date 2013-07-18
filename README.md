# Vargurant #

`Vargurant` is a Vagrant support repository.

# winbase #

`winbase` aids in setting up Windows boxes. It relies on a bare image + Cygwin, and uses Ansible provisioning by way of Vagrant to set up a box. This bootstrap ought then be packaged, and used as a box.

## Winbase Install ##

* Install a bare Windows vm into Virtualbox. I opted for a .vmdk format image.
* Download cygwin; http://www.cygwin.com/setup.exe
* Cygwin install can be done two ways, manually or automated. First, automated:
  * Fetch cygwin: `cygwin -P python-paramiko -P openssh -q -D`
  * Install cygwin: `cygwin -P python-paramiko -P openssh -q -L .`
  Manual:
  * `cygwin -P python-paramiko -P openssh` and complete manually
* Open Cygwin terminal as admin, `ssh-host-config --yes -w asecretsshmasterpassword --cygwin ntsec`
* Schedule sshd to start, `cygrunsrv -S sshd`
* Open a firewall port for 22 in Windows. Probably open ping too.
* Configure for vagrant-windows https://github.com/WinRb/vagrant-windows/tree/vagrant-1.2#all-windows-machines
  * UAC settings
  * winrm settings
  * preferabbly start auto too
* Install VirtualBox Guest Additions

## Winbase Appliance Export; box.ovf & box.vmdk ##

* File -> Export Appliance and save inside the winbase folder as "box.ovf"
* `../createbox` from inside winbase
* `vagrant box add winbase winbase.box` to add newly created box
* Follow Vagrant-Windows instructions for configuring machine to run

## Vagrant-Windows Instructions ##

Requires: bundler,rake

* `git clone https://github.com/WinRb/vagrant-windows`
* change into directory
* `git checkout vagrant-1.2`
* `bundle install`
* `rake build`
* `vagrant plugin install pkg/vagrant-windows-1.2.0.gem`

# Other helpfuls #

https://github.com/dergachev/vagrant-vbox-snapshot
`vagrant plugin install vagrant-vbox-snapshot`
