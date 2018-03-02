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
git clone --recursive https://github.com/zimfw/zimfw.git ${ZDOTDIR:-${HOME}}/.zim
cd ${ZDOTDIR:-${HOME}}/.zim
git checkout zsh-5.0

setopt EXTENDED_GLOB
for template_file ( ${ZDOTDIR:-${HOME}}/.zim/templates/* ); do
  user_file="${ZDOTDIR:-${HOME}}/.${template_file:t}"
  touch ${user_file}
  ( print -rn "$(<${template_file})$(<${user_file})" >! ${user_file} ) 2>/dev/null
done
```

Open a new session and finalize instalation
```
source ${ZDOTDIR:-${HOME}}/.zlogin
```
