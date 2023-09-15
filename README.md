# YADM store
using the yadm command, I can store my dotfiles with out "magic" scripts

## Add the following to the .zshrc file to make work properly

```zsh
updateYadm() {
    yadm pull
}

backupToDrive(){
    yadm add ~/.zshrc
    yadm commit -m "updated .zshrc"
    yadm push
    yadm add ~/.bash*
    yadm add ~/.prompt
    yadm add ~/.dir_colors
    yadm add ~/.git*
    yadm add ~/aspell*
    yadm add ~/.vim*
    yadm add ~/.vscode
    yadm add ~/.aliases
    yadm commit -m "updated all dotfiles"
    yadm push
    echo "Dot files pushed"
    echo "New .zshrc backed up to yadm."
}

sourceZsh(){
   source ~/.zshrc
   backupToDrive ~/.zshrc
   echo "New .zshrc sourced."
}

editZsh(){
    updateYadm
    vim ~/.zshrc
    source ~/.zshrc
    backupToDrive ~/.zshrc
    echo "New .zshrc sourced."
}
```

