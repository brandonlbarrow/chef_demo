#!/bin/bash

brew cask install vagrant
brew cask install virtualbox
brew cask install virtualbox-extension-pack

if (! echo $(vagrant plugin list) | grep -q "vagrant-vbguest"); then
    vagrant plugin install vagrant-vbguest
fi

vagrant destroy -f
vagrant up

echo "=============COMPLETE==============="
echo "Go to http://localhost:8080 in a browser to see the result."
