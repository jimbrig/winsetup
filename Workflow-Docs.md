## Initial Installations

*Assuming already have `winget-cli` via `App Installer` in Store*

- Powershell Core Preview
- Windows Terminal Preview
- PowerToys

```powershell
winget install Microsoft.Powershell-Preview
winget install Microsoft.WindowsTerminalPreview
winget install Microsoft.PowerToys
```

### Chocolatey

- Check Execution Policy (should be `Remote Signed` from enabling Developer Mode in Settings)
- Ensure Admin

```powershell
Get-ExecutionPolicy

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

### Windows Subsystem for Linux

- Can enable optional features through control panel
- OR now you can simply run:

```powershell
wsl --install
```

which will enable Virtual Machine Platform and Download latest WSL Kernel.

- **Restart Machine**

Some minor WSL setup:

```powershell
wsl --set-default-version 2
```
