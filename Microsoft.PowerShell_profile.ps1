# function for creating new file using the "touch" from unix
function touch {set-content -Path ($args[0]) -Value ($null)}

oh-my-posh init pwsh --config 'C:\Users\benbl\AppData\Local\Programs\oh-my-posh\themes\benjoe.omp.json' | Invoke-Expression

Import-Module -Name Terminal-Icons

$env:VIRTUAL_ENV_DISABLE_PROMPT = 1

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
