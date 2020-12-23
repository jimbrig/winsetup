# Install the OpenSSHUtils module to the server. This will be valuable when deploying user keys.
Install-Module -Force OpenSSHUtils -Scope AllUsers

# By default the ssh-agent service is disabled. Allow it to be manually started for the next step to work.
Get-Service -Name ssh-agent | Set-Service -StartupType Manual

# Start the ssh-agent service to preserve the server keys
Start-Service ssh-agent

# Now start the sshd service
Start-Service sshd

# generate key(s)
cd ~\.ssh\
ssh-keygen

# write config file
New-Item -Path '~/.ssh/config' -ItemType File
$lb = "`r`n"
$txt =  "Host *" + $lb + "    Hostname github.com" + $lb + "    User git" + $lb + "    IdentityFile ~/.ssh/id_rsa" + $lb
$txt >> ~/.ssh/config
notepad "~/.ssh/config"

# copy public key
cat ~/.ssh/id_rsa.pub | Write-Output | clip

# open browser to GH SSH Settings and paste
start "https://github.com/settings/ssh/new"
