# ref: https://docs.chocolatey.org/en-us/choco/setup
# install via windows powershell (admin)
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# upgrade
choco upgrade chocolatey

refreshenv

# configure: config stored @ $env:ChocolateyInstall\config\chocolatey.config

# list current configs
choco config
choco feature list

# set global confirmation
choco config set allowGlobalConfirmation true

# set cache location
choco config set cacheLocation $env:TEMP

# logEnvironmentValues = true
choco config set logEnvironmentValues true

# virus checking
choco config set virusCheck true

# upgrade args
choco config set useRememberedArgumentsForUpgrades true

# cleanup info on uninstall
choco config set removePackageInformationOnUninstall true

# skip non-existant pkgs
choco config set skipPackageUpgradesWhenNotInstalled true
