remove(find="Edit with Clipchamp|Ask Copilot|OneDrive")

menu(mode="multiple" type="back|taskbar" title="Tools")
{
  menu(title="Terminal")
  {
    item(title="Command Prompt" cmd="cmd.exe")
    item(title="PowerShell" cmd="powershell.exe")
  }
  menu(title="System")
  {
    item(title="Task Manager" cmd="taskmgr.exe")
    item(title="Control Panel" cmd="control")
    item(title="Settings" cmd="ms-settings:")
    item(title="Run" cmd="rundll32.exe" args="shell32.dll,#61")
  }
}

menu(type="back|taskbar" title="Go To")
{
  item(title="Downloads" cmd="explorer.exe" args=user.downloads)
  item(title="Documents" cmd="explorer.exe" args=user.documents)
  item(title="Pictures" cmd="explorer.exe" args=user.pictures)
  item(title="Desktop" cmd="explorer.exe" args=user.desktop)
  item(title="AppData" cmd="explorer.exe" args=user.appdata)
}

item(type="back|taskbar" title="Restart Explorer" cmd="taskkill /f /im explorer.exe && start explorer.exe")
