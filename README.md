# Nilesoft Shell Config

Custom right-click context menu for Windows 11.

## Features

- **Tools** menu: Terminal (CMD, PowerShell), System (Task Manager, Control Panel, Settings, Run)
- **Go To** menu: Quick access to Downloads, Documents, Pictures, Desktop, AppData
- **Restart Explorer** button
- Works on **desktop** and **taskbar**

## Installation

### Option 1 — Automated (recommended)

Right-click `install.bat` and select **Run as administrator**.

### Option 2 — Manual

1. Install [Nilesoft Shell](https://nilesoft.org/download) (or `winget install nilesoft.shell`)
2. Copy `shell.nss` to `C:\Program Files\Nilesoft Shell\`
3. Run as admin: `regsvr32 /s "C:\Program Files\Nilesoft Shell\shell.dll"`
4. Restart Explorer: `taskkill /f /im explorer.exe && start explorer.exe`

### Reload config after editing

Hold **Ctrl** then right-click on desktop, or restart Explorer.
