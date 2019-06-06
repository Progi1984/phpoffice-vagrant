$script = <<SCRIPT
. sc.exe config winrm start= auto
iwr -useb https://chocolatey.org/install.ps1 | iex

SCRIPT
# choco install -y visualstudio2019community --package-parameters "--allWorkloads --includeRecommended --includeOptional --passive --locale en-US" 
$script2 = <<SCRIPT2
. sc.exe config winrm start= auto
iwr -useb https://chocolatey.org/install.ps1 | iex
choco install -y sql-server-management-studio
SCRIPT2

Vagrant.configure("2") do |config|
  config.vm.box = "StefanScherer/windows_10"

  config.vm.network :forwarded_port, guest: 5985, host: 5985, id: "winrm", auto_correct: true

  config.vm.communicator = "winrm"

  config.winrm.username = "vagrant"
  config.winrm.password = "vagrant"

  config.vm.guest = :windows
  config.windows.halt_timeout = 15

  config.vm.provision "shell", inline: $script, privileged: true, powershell_elevated_interactive: true

  config.vm.provider "virtualbox" do |v|
    v.gui = true
    v.memory = "5120"
    v.cpus = "2"
    v.linked_clone = true
  end
end