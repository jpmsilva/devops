# Running

The following steps have been tested on a Ubuntu Desktop 17.10 x86-64.

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
sudo apt install maven openjdk-8-jdk pylint python3-setuptools python3-virtualenv packer virtualbox python3-wheel
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

