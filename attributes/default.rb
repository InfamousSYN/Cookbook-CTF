## General cookbook attributes
default['general']['owner']								= 'vagrant'
default['general']['group']								= 'vagrant'
default['general']['mode']								= 0711
default['general']['dir']								= '/home/vagrant'

## Attributes for libraries recipes
default['libraries']['multiarch']						= true
default['libraries']['arch']							= 'sudo dpkg --add-architecture i386'
default['libraries']['legacy_method']					= 'sudo echo foreign-architecture i386 > /etc/dpkg/dpkg.cfg.d/mutliarch'
default['libraries']['i386']							= ['libc6:i386','libncurses5:i386','libstdc++6:i386','libglib2.0-0:i386','libfreetype6:i386','libsm6:i386','libXrender1:i386','libfontconfig1:i386','libxext6:i386']
default['java']['enabled']								= true
#default['java']['package']								= 'default-jre'
default['java']['package']								= 'openjdk-7-jre'
default['applications']['packages']						= ['gcc-multilib','gdb','unzip','git']

## Attributes for applications
default['files']['checksec']							= 'checksec.sh'
default['files']['shellcode_examiner']					= 'shellcode_examiner.c'
default['ida']['enabled']								= true
default['ida']['package']								= 'idademo68_linux.tgz'
default['radare2']['enabled']							= true
default['radare2']['package']							= 'radare2'
default['radare2']['depends']							= ['libmagic-dev','libmagic1','libradare2-0.9.6','libradare2-common','libradare2-dev']
default['hopper']['enabled']							= true
default['hopper']['package']							= 'hopperv3-3.9.5.deb'
default['hopper']['depends']							= ['libavahi-common3','libavahi-client3','libxslt1.1','libpthread-workqueue0','libkqueue0','libblocksruntime0','libqt5core5a','libqt5gui5','libqt5network5','libqt5printsupport5','libqt5widgets5','libqt5xml5']
default['hopper']['dir']								= '/opt'
default['pwntools']['enabled']							= true
default['pwntools']['package']							= 'pwntools'
default['pwntools']['depends']							= ['python-dev','python-pip','binutils-aarch64-linux-gnu']
default['qemu']['enabled']								= true
default['qemu']['version']								= ['qemu-system-arm']
default['qemu']['kernel']['arm']						= 'kernel_ARMv6_3.12.28'
default['burp']['enabled']								= true
default['burp']['package']								= 'burpsuite_free_v1.6.30.jar'
