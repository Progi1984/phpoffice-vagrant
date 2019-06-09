Vagrant.configure("2") do |config|
  config.vm.box = "StefanScherer/windows_10"
  # config.disksize.size = '200GB'

  config.vm.communicator = "winrm"
  config.vm.guest = :windows
  config.vm.hostname = "vagrant-phpoffice"
  config.vm.network :forwarded_port, guest: 5985, host: 5985, id: "winrm", auto_correct: true

  config.winrm.username = "vagrant"
  config.winrm.password = "vagrant"

  config.windows.halt_timeout = 15
  
  config.vm.provision "shell", path: "scripts/01-system.ps1", privileged: true, powershell_elevated_interactive: true
  config.vm.provision "shell", path: "scripts/02-install-chocolatey.ps1", privileged: true, powershell_elevated_interactive: true
  config.vm.provision "shell", path: "scripts/03-install-tools.ps1", privileged: true, powershell_elevated_interactive: true
  config.vm.provision "shell", path: "scripts/04-git-clone.ps1", privileged: true, powershell_elevated_interactive: true

  config.vm.provider "virtualbox" do |v|
    v.gui = true
    v.memory = "5120"
    v.cpus = "2"
    v.linked_clone = true
  end
end
