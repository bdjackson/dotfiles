# Setup Python environmnet
Setup borrowed from [pyimagesearch][http://www.pyimagesearch.com/2015/06/15/install-opencv-3-0-and-python-2-7-on-osx/]

# Step 1: Install python from Homebrew
```
brew install python
```

# Step 2: Add the following to your your path
```
export PATH=/usr/local/bin:$PATH
```

## Start a new session or reload .zsh_env:
```
source .zshrc
```

## Check the correct version of python is being picked up:
```
which python
```

This should be:
```
/usr/local/bin/python
```

# Step 3: Install virtualenv and virtualenvwrapper
```
pip install --upgrade virtualenv
pip install --upgrade virtualenvwrapper
```

Add the following to .zsh_env:
```
# Virtualenv/VirtualenvWrapper
source /usr/local/bin/virtualenvwrapper.sh
```

Start a new session or reload .zsh_env
```
source .zshrc
```

## Create a new virtual environment for CV development
```
mkvirtualenv cv
```

# Install some packages that will be useful
```
pip install --upgrade numpy
pip install --upgrade sklearn
pip install --upgrade matplotlib
pip install --upgrade ipython
pip install --upgrade jupyter
```












## 
## brew install cmake pkg-config
## brew install jpeg libpng libtiff openexr
#pyimagesearch# brew install eigen tbb
