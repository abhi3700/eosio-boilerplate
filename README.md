# EOSIO Boilerplate
This is the boilerplate for creating **EOSIO contracts**

Dependency repositories: 
* [x] [eos](https://github.com/EOSIO/eos) - `cleos`, `nodeos`, `keosd`
* [x] [eosio.cdt](https://github.com/EOSIO/eosio.cdt) - `eosio-cpp`,...
* [x] [eosio.contracts](https://github.com/EOSIO/eosio.contracts) - `eosio.bios`, `eosio.msig`, `eosio.system`, `eosio.token`, `eosio.wrap`
* [x] [Oraclize EOS API header](https://github.com/oraclize/eos-api)

## Installation
### System: 
* Linux
* WSL
* Mac

#### Follow the steps [for Compiler i.e. eosio-cpp, ....]
* M-1 (from setup file)
  - download latest (stable) version of `.deb` file from [here](https://github.com/EOSIO/eosio.cdt/releases).
  - in the bash terminal
  ```
  $ wget https://github.com/eosio/eosio.cdt/releases/download/v1.5.0/eosio.cdt-1.5.0-1_amd64.deb
  $ sudo apt install ./eosio.cdt-1.5.0-1_amd64.deb
  ```
* M-2 (from scratch)
  - in the bash terminal
  ```
  $ git clone --recursive https://github.com/eosio/eosio.cdt
  $ cd eosio.cdt
  $ ./build.sh
  $ sudo ./install.sh
  ```

## Setup for Dependency Libraries
Follow the steps:

### Part A: EOSIO libraries
* Repository: [eosio.cdt](https://github.com/EOSIO/eosio.cdt.git) repo.
*	copy and paste the following folders from 
	Source: `eosio.cdt` repo:-
	goto the "libraries" folder:
	- boost 
	- eosiolib
	Destination: `eosio-playground`
* Commands for creating folder:
	- boost: `svn checkout https://github.com/EOSIO/eosio.cdt/trunk/libraries/boost/include/boost`
	- eosiolib: `svn checkout https://github.com/EOSIO/eosio.cdt/trunk/libraries/eosiolib`
* Commands for updating folder:
	- boost: 
		+ `cd boost`
		+ `svn update`
	- eosiolib:
		+ `cd eosiolib`
		+ `svn update`

### Part B: EOSIO system contracts
* copy and paste the following folders from 
	Source: `eosio.contracts` git repo:-
	goto the "libraries" folder:
	- eosio.bios
	- eosio.msig
	- eosio.system
	- eosio.token
	- eosio.wrap
* Commands for creating folder:
	- eosio.bios: `svn checkout https://github.com/EOSIO/eosio.contracts/trunk/eosio.bios`
	- eosio.msig: `svn checkout https://github.com/EOSIO/eosio.contracts/trunk/eosio.msig`
	- eosio.system: `svn checkout https://github.com/EOSIO/eosio.contracts/trunk/eosio.system`
	- eosio.token: `svn checkout https://github.com/EOSIO/eosio.contracts/trunk/eosio.token`
	- eosio.wrap: `svn checkout https://github.com/EOSIO/eosio.contracts/trunk/eosio.wrap`
* Commands for updating folder:
	- eosio.bios: 
		+ `cd eosio.bios`
		+ `svn update`
	- eosio.msig:
		+ `cd eosio.msig`
		+ `svn update`
	- eosio.system:
		+ `cd eosio.system`
		+ `svn update`
	- eosio.token:
		+ `cd eosio.token`
		+ `svn update`
	- eosio.wrap:
		+ `cd eosio.wrap`
		+ `svn update`

### Part C: EOS API Header
* Repository: [eos-api](https://github.com/oraclize/eos-api)
* create folder inside `eosio-playground` cloned repo.: `git submodule add https://github.com/oraclize/eos-api.git eos-api`
* update the repo. inside `eosio-playground` cloned repo.: 
  - M-1: `git submodule update`
  - M-2:
    + `cd eos-api`
    + `git pull`

##### NOTE: Make a bash file for all the `git` & `svn` operations [#todo]
