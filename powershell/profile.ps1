# Sometimes you just wanna work in PowerShell instead

# Use UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

###################################
# oh-my-posh
###################################

Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt Paradox # No longer Set-Theme https://github.com/microsoft/terminal/issues/9237

###################################
# Terminal Icons
###################################

Import-Module -Name Terminal-Icons

###################################
# PSReadLine
###################################

Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineOption -PredictionSource History

###################################
# Git
###################################

# Delete conflicting aliases if desired
If (Test-Path Alias:gc) {del alias:gc -Force}
If (Test-Path Alias:gl) {del alias:gl -Force}

function g {
    git $args
}

function ga {
    git add $args
}

function gaa {
    git add . $args
}

function gb {
    git branch $args
}

function gc {
    git commit -m $args
}

function gca {
    git commit --amend
}

function gl {
    git log
}

function gph {
    git push $args
}

# Rebase only, merges are too messy :)
function gpl {
    git pull --rebase
}

function gs {
    git show
}

function gst {
    git status
}

function gtree {
    git log --graph --oneline
}

###################################
# Functions
###################################
function find-file {
    ls -recurse -filter "*$(name)*" -ErrorAction SilentlyContinue | foreach {
        $path = $_.directory
        echo "$(path)\${_}"
    }
}

###################################
# UNIX substitutes
###################################
function pwd {
    ($Env:Path).Split(";")
}

function grep($regex, $dir) {
    if ($dir) {
        ls $dir | select-string $regex
        return
    }
    $input | select-string $regex
}

function pkill($name) {
    ps $name -ErrorAction SilentlyContinue | kill
}

function touch($file) {
    "" | Out-File $file -Encoding 'utf8'
}

# Update path
function source() {
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 
}

# Reload profile
function reload-profile {
    & $profile
}

# I miss using && in *nix systems
# Usage: <command1>; aa <command2>
function aa() {
    if($?) {
        $command = [string]::join(' ', $args[1..99])
        & $args[0] $command
    }
}
