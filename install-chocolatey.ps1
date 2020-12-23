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
choco feature enable -n allowGlobalConfirmation

# set cache location
choco config set cacheLocation $env:TEMP

# logEnvironmentValues = true
choco feature enable -n logEnvironmentValues

# virus checking
choco feature enable -n virusCheck

# upgrade args
choco feature enable -n useRememberedArgumentsForUpgrades

# cleanup info on uninstall
choco feature enable -n removePackageInformationOnUninstall

# skip non-existant pkgs
choco feature enable -n skipPackageUpgradesWhenNotInstalled
