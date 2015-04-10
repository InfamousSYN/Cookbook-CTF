# CTF-Cookbook

## Description
This cookbook is used setup and prepare the instance environment for CTF events and Wargame challenges.

## Requirements
* built and tested on Ubuntu 14.04 x86-64.
* git
* ruby 1.9.3p484
* Vagrant 1.4.3

## Attributes
* `default["libraries"]["i386"] = ["libc6:i386","libncurses5:i386","libstdc++6:i386"]` - Sets the x86 libraries that are to be installed.
* `default["applications"]["packages"] = ["gcc-multilib", "gdb"]` - Sets software/packages to install.

## Usage
This cookbook has been designed to work in conjunction with Vagrant's instance but can work with Amazon's OpsWork.

Initialises the current directory to be a Vagrant environment.
```
$ vagrant init
$ vi Vagrantfile
```

Edit the Vagrantfile in the directory that was just initialised.
```
# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ubuntu/trusty64"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "http://atlas.hashicorp.com/ubuntu/boxes/trusty64"

  # Enable provisioning with chef solo, specifying a cookbooks path, roles
  # path, and data_bags path (all relative to this Vagrantfile), and adding
  # some recipes and/or roles.
  #
   config.vm.provision :chef_solo do |chef|
     chef.cookbooks_path = "/"
     chef.add_recipe "CTF-Cookbook"
   end
end
```

Download the cookbook from GitHub into the current vagrant directory.
```
$ git clone https://github.com/InfamousSYN/CTF-Cookbook.git
```

### Recipes

#### default
This is the default cookbook recipe.

#### setup-files
This recipe creates the files located in the files directory on the instance.
* http://www.trapkit.de/tools/checksec.sh

#### x86_libraries
This recipe will install the required x86 libraries on the instance.

## Authors and License

|  Authors   | Contact              |
|------------|:--------------------:|
|InfamousSYN |ainfamoussyn@gmail.com|

Please read the LICENSE file for more information.
