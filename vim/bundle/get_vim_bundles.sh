echo ''
echo '------------------------------------------------------------'
echo 'install NERDTree bundle which provides a nice tree structure for viewing files'
git clone git://github.com/scrooloose/nerdtree.git

echo ''
echo '------------------------------------------------------------'
echo 'install commandT bundle used for fast opening of files within a project'
git clone git://git.wincent.com/command-t.git
cd command-t/ruby/command-t
ruby extconf.rb
make 
cd - 

echo ''
echo '------------------------------------------------------------'
echo 'install snipmate bundle used for textmate style snippits'
git clone git://github.com/msanders/snipmate.vim.git
git clone git://github.com/scrooloose/snipmate-snippets.git scrooloose_snippets

echo ''
echo '------------------------------------------------------------'
echo 'install super tab bundle
git clone git://github.com/ervandew/supertab.git

echo ''
echo '------------------------------------------------------------'
echo 'install OmniCppComplete bundle for contextual c++ completion'
git clone git://github.com/vim-scripts/OmniCppComplete.git

echo ''
echo '------------------------------------------------------------'
echo 'install unimpaired bundle for "text bubbling"'
git clone git://github.com/tpope/vim-unimpaired.git

echo ''
echo '------------------------------------------------------------'
echo 'install tabular for cool alignment'
git clone git://github.com/godlygeek/tabular.git
