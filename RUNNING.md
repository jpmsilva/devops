# Running

The following steps have been tested on a __Ubuntu Desktop 17.10 x86-64__.

## Listing

This is a short description of each top level file/folder:

* [http](http) is a folder that contains a preseed configuration for an Ubuntu installation
* [output](output) is a folder that contains a console output from a sample run of the build script
* [scripts](scripts) is a folder that contains bash scripts to bootstrap a virtual box machine template
* [app-example.service](app-example.service) is a SystemD service unit to run the Java app
* [build](build) is the script that runs a full build
* [ubuntu-16.04-amd64.json](ubuntu-16.04-amd64.json) is a packer descriptor for a Ubuntu 16.04 server machine
running on virtualbox
* [wwa_devops.service](wwa_devops.service) is a SystemD service unit to run the Python app
* [wwa_devops.timer](wwa_devops.timer) is a SystemD timer unit to schedule the execution of the Python app

The packer descriptor and bootstrap scripts have been adapted from [kaorimatz](https://github.com/kaorimatz/packer-templates)

## Requirements

Make sure the following packages are installed:

* maven
* openjdk-8-jdk
* pylint
* python3-setuptools
* python3-virtualenv
* python3-wheel
* packer
* virtualbox

If needed, install them with

```
sudo apt install maven openjdk-8-jdk pylint python3-setuptools python3-virtualenv python3-wheel packer virtualbox
```

Ensure that the environment variable `PROJECTS_ZIP` points to the project zip file.

## Running

Clone this repository with
```
git clone https://github.com/jpmsilva/devops.git
```
Issue the following command

```
cd devops
./build
```

## Output

The resultant packaged machine is stored in the folder ```output-ubuntu-16.04-amd64-virtualbox-iso``` within
the cloned repository.

There is an [example output](output/out.log) from a sample run.
