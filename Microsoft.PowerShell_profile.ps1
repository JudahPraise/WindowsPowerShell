function GoToLaragon([string]$Project) {
    cd ../../laragon/www/$Project
}

function GoBack([int]$LevelsBack) {
    $backCommand = '../'
    $command = $backCommand * $LevelsBack
    Set-Location -Path $command
}

function PhpServe([string]$port){
    if($port -eq ""){
        php artisan serve
    } else {
        php artisan serve --port=$port
    }
}

function VsCodeGoTo([string]$project) {
    GoToLaragon($project)
    code .
}

Set-Alias -Name back -value GoBack
Set-Alias -Name ps -Value PhpServe -Option AllScope
Set-Alias -Name lara -Value GoToLaragon
Set-Alias -Name dev -Value VsCodeGoTo
