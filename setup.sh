#!/bin/bash

brew cask install vagrant
brew cask install virtualbox
brew cask install virtualbox-extension-pack

if (! echo $(vagrant plugin list) | grep -q "vagrant-vbguest"); then
    vagrant plugin install vagrant-vbguest
fi

vagrant destroy -f
vagrant up

if ( $(curl -s -o /dev/null -w "%{http_code}" localhost:8080) =~ "*200*"); then
    echo "=============COMPLETE==============="
    echo "Go to http://localhost:8080 in a browser to see the result."
fi
