dotfiles
====

Various things for home directory

## Change shell to zsh
```
chsh -s $(which zsh)
```

## Set up oh-my-zsh
To install oh-my-zsh, run this command.
```
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
```
 This is command is taken from [[ohmyz.sh][ohmyz.sh]]

## Install other packages
Install the latest versions of git and svn
```
brew install git
brew install svn
```

## Set up ZIM

```
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
```

Modify any modules you would like in `~/.zimrc`
