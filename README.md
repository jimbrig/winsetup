# Windows Setup

This repository contains various scripts, installations, configurations, checklists, processes, and notes regarding settings up and provisioning a new Windows 10 machine optimized for development work.

## First Steps

Initially, you will need to walkthrough the steps to install the Windows OS onto your machine and set certain settings such as Wifi, Privacy, and OneDrive. I will leave these out of the context of this document but would recommend disabling and reviewing the privacy settings. It is also common to initially utilize an offline user account instead of a linked microsoft account to avoid linking your windows account and pre-existing settings/onedrive.

### Update Windows and Enable Developer Mode

1. In Settings run Windows Update to update to the latest released Windows OS, restarting when necessary.
2. Enable Developer Mode from Settings > Update and Security > Developer Mode
3. Initialize Windows Insider Program, Dev Channel
4. Re-run windows updates, restarting when necessary.
5. Open Windows Store and update all necessary apps to latest versions 

### Install Package Manager(s)

Throughout setting up windows, many **package managers** will be used, some optional, including but not limited to:

- `nuget`
- `Chocolatey`
- `winget-cli`
- `npm` via `node.js`
- `pip` or `pip3` via `Python`
- `scoop` and/or `boxstarter` (similar to chocolatey)
- `ruby`, `rubygem`, `yarn`, `cargo`, etc.
- `homebrew` (WSL only as this is a MacOS library)

Alternatively, you can utilize Ninite for bulk installations.

#### Installing `winget-cli`

- Ensure you have the latest *App Installer* downloaded and installed from Microsoft Store to utilize Window's new package manager: `winget` - see <https://github.com/microsoft/winget-cli>

#### Installing `chocolatey`

- Install `chocolatey` via `powershell` as an administrator:

Check execution policy:

```powershell
Get-ExecutionPolicy
```

if returns `Remote-Signed` (which it should considering you enabled Developer Mode in the first steps) you are good, else, run `Set-ExecutionPolicy AllSigned`.

Chocolatey Install Script:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```
Once installed close and re-open your shell.

### Debloat

With an up to date, insider dev edition of windows, now its time to debloat all the unnecessary bloatware that came with your PC.
There are a couple options for this:

- Run `Reset this PC` which will delete all unecessary programs non-essential to Windows and reinstall the Windows OS.

- Uninstall apps permanently using `powershell`: 

```powershell
# be sure running as administrator
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))
```

Visit [Windows10Debloater](https://github.com/Sycnex/Windows10Debloater) for details on the powershell debloater.

- Manually uninstall apps from Settings, Start Menu, or Programs and Features (Control Panel)

- Use a more full-proof uninstaller such as Bulk Crap Uninstaller, Revo Uninstaller, or my favorite Geek. Geek also has a paid version called Uninstall Tool worth looking into. For installing you can run their respective installers or simply use `winget`:

```powershell
winget install RevoUninstaller
winget install Bulk Crap Uninstaller
```

for geek, I use Chocolatey to install:

to install chocolatey:





