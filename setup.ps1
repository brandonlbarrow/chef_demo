Write-Output "You will need to restart you computer after you install the chocolatey packages. Afterwards, re-run this script."

choco install virtualbox vagrant cyg-get virtualbox.extensionpack

refreshenv # this is to load the new PATH variable with vagrant


vagrant plugin install vagrant-vbguest
vagrant destroy -f
vagrant up

if ( (Invoke-WebRequest 'localhost:8080').StatusCode == 200 ) {
    Write-Output "=============COMPLETE==============="
    Write-Output "Go to http://localhost:8080 in a browser to see the result"
}
