Setup Python environmnet
========================
Setup borrowed from [pyimagesearch](http://www.pyimagesearch.com/2015/06/15/install-opencv-3-0-and-python-2-7-on-osx/)


Step 1: Install python from Homebrew
====================================
```
brew install python
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
pip install --upgrade sklearn
pip install --upgrade pandas
pip install --upgrade scipy
pip install --upgrade matplotlib
pip install --upgrade seaborn
pip install --upgrade ipython
pip install --upgrade jupyter
```


Prepare to install OpenCV
=========================
```
brew install cmake pkg-config
brew install jpeg libpng libtiff openexr
brew install eigen tbb
```


Install OpenCV
==============
```
cd ~/local
git clone https://github.com/Itseez/opencv.git
cd opencv
git checkout 3.0.0
```

```
cd ~/local
git clone https://github.com/Itseez/opencv_contrib
cd opencv_contrib
git checkout 3.0.0
```

```
cd ~/local/opencv
mkdir build
cd build
```


```
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local \
	-D PYTHON2_PACKAGES_PATH=~/.virtualenvs/cv/lib/python2.7/site-packages \
	-D PYTHON2_LIBRARY=/usr/local/Cellar/python/2.7.10/Frameworks/Python.framework/Versions/2.7/bin \
	-D PYTHON2_INCLUDE_DIR=/usr/local/Frameworks/Python.framework/Headers \
	-D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON \
	-D BUILD_EXAMPLES=ON \
	-D OPENCV_EXTRA_MODULES_PATH=~/local/opencv_contrib/modules ..
```
