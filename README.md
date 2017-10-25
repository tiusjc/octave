# Docker GNU Octave 

Container used in the Unifesp's computer labs
Base ubuntu:latest

# What is Octave?

GNU Octave Scientific Programming Language is:
Scientific Programming Language
Powerful mathematics-oriented syntax with built-in plotting and visualization tools
Free software, runs on GNU/Linux, macOS, BSD, and Windows
Drop-in compatible with many Matlab scripts
(https://www.gnu.org/software/octave/)

# Objectives

* Enable portability
* Facilitate access for all users
* Reduce risks of incompatibility of packages 

# Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. 
See deployment for notes on how to deploy the project on a live system.

## Prerequisites

docker and xhost

```
If like ubuntu:
apt-get install docker xhost
```
## How to use this image
```
Enable xhost: sudo /usr/bin/xhost -

Create directories to save your files:
mkdir $HOME/octave
chmod 775 -R $HOME/octave
```
```
To start container (linux):
docker run -ti --rm -e DISPLAY=unix$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME/octave:/$HOME/octave/ -w $HOME/octave --name oct tiusjc/octave
```
# Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

For the versions available, see the (https://https://github.com/tiusjc/octave). 

## Authors

* **Nunes Thiago** [https://github.com/nunesthiago]
* **Walfran** [https://github.com/walfrn]

