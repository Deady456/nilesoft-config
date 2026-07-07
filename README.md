# Nilesoft Shell Config

Custom right-click context menu for Windows 11/10.

![Screenshot](contextmenu.png)

Adds **Tools**, **Go To**, and **Restart Explorer** to your right-click menu — works on desktop and taskbar.

## Features

| Menu | Items |
|------|-------|
| **Tools > Terminal** | Command Prompt, PowerShell |
| **Tools > System** | Task Manager, Control Panel, Settings, Run |
| **Go To** | Downloads, Documents, Pictures, Desktop, AppData |
| | Restart Explorer |

## Installation

### Via winget (auto)

```powershell
winget install nilesoft.shell
```

Then download `shell.nss` from this repo and copy to:

```
C:\Program Files\Nilesoft Shell\shell.nss
```

Register and restart Explorer (run as admin):

```powershell
regsvr32 /s "C:\Program Files\Nilesoft Shell\shell.dll"
taskkill /f /im explorer.exe && start explorer.exe
```

### Via install.bat (recommended)

1. Download [install.bat](install.bat) and [shell.nss](shell.nss)
2. Right-click `install.bat` → **Run as administrator**

The script will install Nilesoft Shell (if missing), copy config, register DLL, and restart Explorer.

### Manual

1. Download [Nilesoft Shell](https://nilesoft.org/download)
2. Copy `shell.nss` to `C:\Program Files\Nilesoft Shell\`
3. Register: `regsvr32 /s "C:\Program Files\Nilesoft Shell\shell.dll"`
4. Restart Explorer

## Reload config after editing

Hold **Ctrl** then right-click on desktop, or restart Explorer:

```cmd
taskkill /f /im explorer.exe && start explorer.exe
```
