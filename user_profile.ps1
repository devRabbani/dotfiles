#Prompt
Import-Module posh-git
Import-Module oh-my-posh


#Load prompt config
function Get-ScriptDirectory {Split-Path $MyInvocation.ScriptName}


$PROMPT_CONFIG = Join-Path (Get-ScriptDirectory) 'rabbani.omp.json'
oh-my-posh --init --shell pwsh --config $PROMPT_CONFIG | Invoke-Expression


Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

#Icons
Import-Module -Name Terminal-Icons



#Alias
Set-Alias vim nvim
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
