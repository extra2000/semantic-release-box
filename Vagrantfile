# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vagrant.plugins = ["vagrant-reload", "vagrant-scp"]
end

semantic_release_box_vagrantfile = './vagrant/Vagrantfile.semantic-release-box'
load semantic_release_box_vagrantfile if File.exists?(semantic_release_box_vagrantfile)
