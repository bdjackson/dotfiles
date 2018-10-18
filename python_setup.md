Setup Python environmnet
========================
Setup borrowed from [pyimagesearch](http://www.pyimagesearch.com/2015/06/15/install-opencv-3-0-and-python-2-7-on-osx/)


Step 1: Install python from Homebrew
====================================
```
brew install python2
brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/f2a764ef944b1080be64bd88dca9a1d80130c558/Formula/python.rb
# brew install python
```


Step 2: Add the following to your your path
===========================================
```
export PATH=/usr/local/bin:$PATH
```

Start a new session or reload .zsh_env:
---------------------------------------
```
source .zshrc
```

Check the correct version of python is being picked up:
-------------------------------------------------------
```
which python
```

This should be:
```
/usr/local/bin/python
```


Step 3: Install virtualenv and virtualenvwrapper
================================================
```
pip install --upgrade virtualenv
pip install --upgrade virtualenvwrapper
```

```
pip3 install --upgrade virtualenv
pip3 install --upgrade virtualenvwrapper
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

Create a new virtual environment for CV development
---------------------------------------------------

Create a new virtual environment for CV development which will be independent
of the default python environment
```
mkvirtualenv cv
```

To get back to this environment in a new session, use the following:
```
workon cv
```


Install some packages that will be useful
=========================================
```
pip install --upgrade numpy
pip install --upgrade scipy
pip install --upgrade sklearn
pip install --upgrade pandas
pip install --upgrade matplotlib
pip install --upgrade seaborn
pip install --upgrade ipython
pip install --upgrade jupyter
pip install --upgrade Pillow
pip install --upgrade scikit-image
pip install --upgrade exifread
```


Prepare to install OpenCV
=========================
Install OpenCV
==============
```
deactivate
brew install opencv

workon local # or whichever virtual env you want
pip3 install opencv-python
```

Install TensorFlow
==================
```
pip3 install --upgrade tensorflow

# export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/mac/cpu/tensorflow-0.10.0-py3-none-any.whl
# pip install --upgrade $TF_BINARY_URL
```

