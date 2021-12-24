# Starship
Invoke-Expression (&starship init powershell)

# Auto suggestions
set-psreadlineoption -predictionsource history

# Aliases
Set-Alias -Name e   -Value q
Set-Alias -Name v   -Value nvim
Set-Alias -Name s   -Value start
Set-Alias -Name lw  -Value librewolf
Set-Alias -Name kwm -Value komorebic
Set-Alias -Name ahk -Value autohotkey

# Functions
function q() {
  Invoke-command -ScriptBlock {exit}
}
function c() {
  Invoke-command -ScriptBlock {clear}
}
function ll() {
  ls -h;
  ls;
}
function lws() {
  librewolf -search "$args"
}

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
