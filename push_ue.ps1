Set-Location $PSScriptRoot
$msg = "Initial commit: UE Card Command - form generator for order/assist/reorder Discord commands"
git add .
git commit -m $msg
git remote add origin https://github.com/g8tsz/UE-card-command.git 2>$null
git branch -M main
git push -u origin main
