# Sometimes you just wanna work in PowerShell instead

###################################
# oh-my-posh
###################################

Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox

###################################
# Git
###################################

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

function source() {
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 
}
