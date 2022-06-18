1. Install oh my posh

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))
```

2. Install Terminal-Icons

```powershell
Install-Module -Name Terminal-Icons -Repository PSGallery
```

3. Install posh-git

```powershell
Install-Module -Name posh-git -Allowprelease -Force
```

4. Install PSReadline

```powershell
Install-Module -Name PSReadline -Force
Exit
```

5. Config $PROFILE

```powershell
notepad $PROFILE
```

6. Paste this:

```powershell
$env:path += ";${env:ProgramFiles}\Git\bin"
oh-my-posh --init --shell pwsh --config ~AppData\Local\Programs\oh-my-posh\themes\powerlevel10k_rainbow.omp.json | Invoke-Expression
Import-Module posh-git
Import-Module Terminal-Icons
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Enable-PoshLineError
Enable-PoshTooltips
clear
```

> Note: you can install Dracula Theme [Dracula Theme](https://draculatheme.com/powershell)
