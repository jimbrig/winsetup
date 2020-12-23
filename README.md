# Windows Setup

This repository contains various scripts, installations, configurations, checklists, processes, and notes regarding settings up and provisioning a new Windows 10 machine optimized for development work.

Recommended Reading: <https://docs.microsoft.com/en-us/windows/dev-environment/overview>

## First Steps

Initially, you will need to walkthrough the steps to install the Windows OS onto your machine and set certain settings such as Wifi, Privacy, and OneDrive. I will leave these out of the context of this document but would recommend disabling and reviewing the privacy settings. It is also common to initially utilize an offline user account instead of a linked microsoft account to avoid linking your windows account and pre-existing settings/onedrive.

### Update Windows and Enable Developer Mode

1. In Settings run Windows Update to update to the latest released Windows OS, restarting when necessary.
2. Enable Developer Mode from Settings > Update and Security > Developer Mode
3. Initialize Windows Insider Program, Dev Channel
4. Re-run windows updates, restarting when necessary.
5. Open Windows Store and update all necessary apps to latest versions 

### Install Latest Microsoft Developer Open Source Toolkit

Microsoft has provided some amazing new open-source developer tools which we will install via `winget` the new Microsoft package manager: 

In order to ease the process of implementing all of our commands let's improve our terminal and shell by installing Microsoft's open-source versions of [Powershell](https://github.com/PowerShell) and [Windows Terminal](https://github.com/microsoft/terminal).

```powershell
winget install Microsoft.Powershell-Preview
winget install Microsoft.WindowsTerminalPreview
winget install Microsoft.PowerToys
```

Full list of core-developer tools from windows:

- Windows Package Manager `winget`
- Powershell Core (Preview)
- Windows Terminal (Preview)
- PowerToys (Preview)
- Visual Studio Code
- .NET/Visual Studio/NuGet
- Azure Tools and Azure CLI

Other Essentials:

- Git (for Windows) + LFS + Crypt + Secret
- Docker Desktop (Beta)
- WSL + Ubuntu
- Python
- Node.js
- R, RTools, RStudio
- GitKraken
- Github-CLI
- GCloud SDK

Optional Utilities:

- SysEssentials 
- Autoruns
- ProcessExplorer

### Debloat Pre-Installed Crapware

Run the powershell script [uninstall-bloatware.ps1](./uninstall-bloatware.ps1) to remove the following:

- Bing Weather
- Bing News
- Bing Sports
- Candy Crush Saga
- Candy Crush Friends
- Bubble Witch 3 Saga
- Microsoft Solitare Collection
- Mahjong
- LinkedIn For Windows
- Your Phone
- Alarms And Clocks
- Windows Mail
- OfficeHub
- Get Started
- Groove Music
- Maps
- Netflix
- Deezer music

### Adjust Settings and Personalization

- Change display settings for external monitors
- Change desktop background, theme, cursor, colors, etc.
- Update explorer.exe default settings:

```powershell
<Find PS commands for this or Boxstarter>
```

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

***

## Checklist

Currently primary devkit is:

## Package Managers

- [ ] winget-cli
- [ ] chocolatey
- [ ] pip (Python)
- [ ] npm (Node)
- [ ] Powershell Modules* (do later when setting up PS Profiles)
- [ ] NuGet/Visual Studio
- [ ] R Packages (CRAN & `pak`) -- DRAT?

*Optional*
- [ ] Ninite (online)
- [ ] scoop (optional)
- [ ] boxstarter (optional)

## Shells/Terminals/Emulators

- [ ] powershell core 7 (preview)
- [ ] windows terminal (preview)
- [ ] bash (WSL2 & Ubuntu Distro)
- [ ] Git-Bash (Git for Windows)
- [ ] RTerm
- [ ] RTools
- [ ] MySys2
- [ ] Cygwin
- [ ] Yori
- [ ] GnuPg

## IDEs, GUIs, and Text Editors

- [ ] VScode
- [ ] RStudio
- [ ] Typora
- [ ] GitKraken
- [ ] Notepad (Store Version)
- [ ] (optional) Notepads/Quickpad (Store)

## Essential Tools

- [ ] Git + Extras (Crypt, Secret, LFS, etc.)
- [ ] SSH + OpenSSH Feature
- [ ] Hyper-V + Virtual Drive Features
- [ ] WSL2 + Ubuntu Distro + Shell
- [ ] GH-CLI
- [ ] GnuPg
- [ ] RTools
- [ ] Docker (via *Docker Desktop Beta*)
- [ ] GCloud SDK
- [ ] minikube / kubectl
- [ ] Azure CLI

## Utilities

- [ ] powertoys
- [ ] QTTabBar
- [ ] Winaero Tweaker
- [ ] Rapid Environment Editor
- [ ] Link Shell Extension
- [ ] **A dotfiles manager**
- [ ] Teracopy/CopySoftwareTool?
- [ ] 7Zip
- [ ] File Converter
- [ ] wt-contextmenu
- [ ] contextmenutuner
- [ ] WinX tuner

## Security

- AVG
- MalwareBytes
- Norton
- Windows

## Languages/Support

- [ ] R
- [ ] Python
- [ ] Node
- [ ] Ruby
- [ ] Java
- [ ] SQL
- [ ] Javascript, HTML, CSS

## Linux

- [ ] WSL2
- [ ] Ubuntu





