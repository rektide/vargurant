# Virtualbox

http://www.virtualbox.org/manual/ch08.html#vboxmanage-modifyvm

```
	config.vm.provider :virtualbox do |vb|
		#vb.gui = true
		#vb.customize ["modifyvm", :id, "--memory", "1024"]
		#vb.customize ["modifyvm", :id, "--draganddrop", "hosttoguest"]
		#vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
		#vb.customize ["modifyvm", :id, "--vrde", "on"]
		#vb.customize ["modifyvm", :id, "--vrdeport", "3389"]
		#vb.customize ["modifyvm", :id, "--vrdeauthtype", "external"]
		#vb.customize ["modifyvm", :id, "--vrdemulticon", "on"]
	end
```
