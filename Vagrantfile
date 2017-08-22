$envscript = <<SCRIPT
[[ -z "$RASPBIAN_REMASTER_CHROOT" ]] &&
  echo "export RASPBIAN_REMASTER_CHROOT=/home/vagrant/raspbian" >> /etc/profile
[[ -z "$RASPBIAN_REMASTER_PUBLISH" ]] &&
  echo "export RASPBIAN_REMASTER_PUBLISH=/vagrant/images" >> /etc/profile
SCRIPT

Vagrant.configure("2") do |config|
  config.vm.box = "bento/debian-9.0"
  config.vm.provision "shell", inline: $envscript
  config.vm.provision "shell", inline: "/vagrant/build-full"
end
