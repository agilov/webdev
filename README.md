# My web dev Vagrant box

This is Vagrant box for web development purposes. Based on Ubuntu 18 LTS

Main backend language is PHP 7.2

Besides PHP also provided: NodeJS (with yarn and npm), Python3 (with PIP3), Golang

If you are not familiar with Vagrant: [RTFD](https://www.vagrantup.com/docs/index.html) 

## Usage

#### Prepare box and Vagrantfile
~~~
git clone https://github.com/agilov/webdev.git .

cd webdev

cp Vagrantfile.example Vagrantfile

nano Vagrantfile
~~~

Uncomment and change config.vm.synced_folder directives to setup your dev shared folders

Also you can change everything in Vagrantfile (cpus, memory etc.) Vagrantfile is gitignored.

If you don't want to install some packages - comment out unwanted playbooks in provision/full.yml fileю


#### Run vagrant
~~~
vagrant up
~~~


#### Connect via SSH

~~~
chmod 0600 ./keys/vagrant-insecure
ssh -i ./keys/vagrant-insecure vagrant@192.168.56.110
~~~

or

~~~
chmod 0600 ./keys/vagrant-insecure
vagrant ssh
~~~


#### Check Nginx works

To checks nginx working: open http://192.168.56.110 in browser


#### Remote PostgreSQL connection

PostgreSQL server also available on 192.168.56.110:5432 with user postgres (no password required)


## What is on board

##### Generic DEV packages
  - GNU Midnight Commander (type 'mc' to run)
  - Nginx 1.14
  - Git 2.17
  - Chrome headless 71 (with ChromeDriver)

##### Data management stuff:
  - PostgreSQL 10
  - ClickHouse
  - Redis 4
  - Memcached

##### PHP:
  - PHP 7.2
  - Composer (globally)
  - Xdebug (enabled)

##### Other languages:
  - Golang
  - Java (Open JDK)
  - Python 3 (with PIP3)
  - NodeJS 10 (with Yarn and NPM)
  
  
## I want moar

More information about software (full list and exact versions) you can see on SSH startup message.

[Read more about web development](http://bfy.tw/Lfry)
