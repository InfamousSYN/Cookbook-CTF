# General cookbook attributes
default['general']['owner']				= 'vagrant'
default['general']['group']				= 'vagrant'
default['general']['mode']				= 0711
default['general']['dir']				= '/home/vagrant'

# Attributes for libraries recipes
default['libraries']['multiarch']		= true
default['libraries']['i386']			= ['libc6:i386','libncurses5:i386','libstdc++6:i386','libglib2.0-0:i386','libfreetype6:i386','libsm6:i386','libXrender1:i386','libfontconfig1:i386','libxext6:i386']

# Attributes for applications
default['applications']['packages']		= ['gcc-multilib','gdb','unzip','git']
default['ida']['enabled']				= true
default['ida']['package']				= 'idademo68_linux.tgz'
default['hopper']['enabled']			= true
default['hopper']['package']			= 'hopperv3-3.9.5.deb'
default['hopper']['depends']			= ['libavahi-common3','libavahi-client3','libxslt1.1','libpthread-workqueue0','libkqueue0','libblocksruntime0','libqt5core5a','libqt5gui5','libqt5network5','libqt5printsupport5','libqt5widgets5','libqt5xml5']
default['hopper']['dir']				= '/opt'
default['pwntools']['enabled']			= true
#default['pwntools']['latest']			= 'git+https://github.com/Gallopsled/pwntools#egg=pwntools'
default['pwntools']['package']			= 'pwntools'
default['pwntools']['depends']			= ['python-dev','python-pip','binutils-aarch64-linux-gnu']