#!/bin/bash
##########################################################################
# This sets up the dependency libraries from different github repositories.
# NOTE: in case of any unexpected error, try to use `dos2unix <shell-script-file-name.sh>`
##########################################################################
# -----------------------------------------------------------------
# boost
if [[ -d "boost" ]]; then
	# echo "boost folder exist"
	cd boost
	svn update
	cd ..
else
	# echo "boost folder NOT exist"
	svn checkout https://github.com/EOSIO/eosio.cdt/trunk/libraries/boost/include/boost
fi
# -----------------------------------------------------------------
# eosiolib
if [[ -d "eosiolib" ]]; then
	# echo "eosiolib folder exist"
	cd eosiolib
	svn update
	cd ..
else
	# echo "eosiolib folder NOT exist"
	svn checkout https://github.com/EOSIO/eosio.cdt/trunk/libraries/eosiolib
fi
# -----------------------------------------------------------------
# eosio.bios
if [[ -d "eosio.bios" ]]; then
	# echo "eosio.bios folder exist"
	cd eosio.bios
	svn update
	cd ..
else
	# echo "eosio.bios folder NOT exist"
	svn checkout https://github.com/EOSIO/eosio.contracts/trunk/eosio.bios
fi
# -----------------------------------------------------------------
# eosio.msig
if [[ -d "eosio.msig" ]]; then
	# echo "eosio.msig folder exist"
	cd eosio.msig
	svn update
	cd ..
else
	# echo "eosio.bios folder NOT exist"
	svn checkout https://github.com/EOSIO/eosio.contracts/trunk/eosio.msig
fi
# -----------------------------------------------------------------
# eosio.system
if [[ -d "eosio.system" ]]; then
	# echo "eosio.system folder exist"
	cd eosio.system
	svn update
	cd ..
else
	# echo "eosio.system folder NOT exist"
	svn checkout https://github.com/EOSIO/eosio.contracts/trunk/eosio.system
fi
# -----------------------------------------------------------------
# eosio.token
if [[ -d "eosio.token" ]]; then
	# echo "eosio.token folder exist"
	cd eosio.token
	svn update
	cd ..
else
	# echo "eosio.token folder NOT exist"
	svn checkout https://github.com/EOSIO/eosio.contracts/trunk/eosio.token
fi
# -----------------------------------------------------------------
# eosio.wrap
if [[ -d "eosio.wrap" ]]; then
	# echo "eosio.wrap folder exist"
	cd eosio.wrap
	svn update
	cd ..
else
	# echo "eosio.wrap folder NOT exist"
	svn checkout https://github.com/EOSIO/eosio.contracts/trunk/eosio.wrap
fi
# -----------------------------------------------------------------
# eosio.token
if [[ -d "eos-api" ]]; then
	# echo "eos-api folder exist"
	cd eos-api
	git pull
	cd ..
else
	# echo "eos-api folder NOT exist"
	git submodule add https://github.com/oraclize/eos-api.git eos-api
fi



