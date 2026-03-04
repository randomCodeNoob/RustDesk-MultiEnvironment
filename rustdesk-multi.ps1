param(
    [Parameter(Mandatory=$true)]
    [string]$ConfigName
)
Get-Process -Name "rustdesk" -ErrorAction SilentlyContinue |  Stop-Process -Force
$basePath = "C:\Rustdesk"
$link = "$env:APPDATA\RustDesk"
$target = Join-Path $basePath $ConfigName

if (!(Test-Path $target)) {
    Write-Error "Config nicht gefunden!"
    exit
}

if (Test-Path $link) {
    Remove-Item $link -Recurse -Force -ErrorAction SilentlyContinue
}

cmd /c mklink /J "$link" "$target"

Start-Process "C:\Rustdesk\rustdesk.exe"
