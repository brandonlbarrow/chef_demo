## Setup instructions:

# MacOS
If you have homebrew installed, just run ./setup.sh and when it completes, open a browser to http://localhost:8080.
Homebrew link if you do not have it (required to run setup.sh): 

```/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"```

# Windows
Install Chocolatey if you don't already have it: 

```Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))```

Run ```powershell.exe -ExecutionPolicy Bypass setup.ps``` and when it finishes, open a browser to http://localhost:8080.
