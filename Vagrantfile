$envscript = <<SCRIPT
cat << EOF >> /etc/profile
export RASPBIAN_REMASTER_CHROOT=/home/vagrant/raspbian
export RASPBIAN_REMASTER_IMAGE=/vagrant/images/raspbian.img
EOF
SCRIPT
Vagrant.configure("2") do |config|
  config.vm.box = "bento/debian-9.0"
  config.vm.provision "shell", inline: $envscript
  config.vm.provision "shell", inline: "/vagrant/build-example"
end
