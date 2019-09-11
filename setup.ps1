choco install virtualbox vagrant cyg-get

refreshenv # this is to load the new PATH variable with vagrant

vagrant destroy -f
vagrant up

if ( (Invoke-WebRequest -Uri 'localhost:8080').StatusCode == 200 ) {
    Write-Output "=============COMPLETE==============="
    Write-Output "Go to http://localhost:8080 in a browser to see the result"
}
