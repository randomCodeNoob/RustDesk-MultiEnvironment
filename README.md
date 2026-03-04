Switch between multiple Rustdesk environments.

Since Rustdesk always saves config in %appdata%\Rustdesk and i regulary need to switch between different Rustdesk Servers i decided to make this.

How to:
Create C:\Rustdesk and place Rustdesk-Multi.ps1 and Rustdesk executable there, rename executable to Rustdesk.exe

Create Folder for your environments, eg Company, Private, Public.
Create Shortcuts for
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File "C:\Rustdesk\Rustdesk-Multi.ps1" Company
Run and set your ID-Server, Public-key, etc
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File "C:\Rustdesk\Rustdesk-Multi.ps1" Private
Run and set your ID-Server, Public-key, etc
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File "C:\Rustdesk\Rustdesk-Multi.ps1" Public
Run and set your ID-Server, Public-key, etc

Will kill all running Rustdesk processes, create junctions from %appdata%\Rustdesk to whatever your argument is what you call in the shortcut.
