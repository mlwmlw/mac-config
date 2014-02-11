mac-config
==========

preinstall

    $ yum install ctags zsh
    # change default shell
    $ chsh -s /bin/zsh
    # oh-my-zsh
    $ curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

install

    $ git clone https://github.com/mlwmlw/mac-config.git
    # install vim bundles 
    $ vim +BundleInstall +qall!
    # dircolors-solarized
    $ curl https://raw.github.com/seebi/dircolors-solarized/master/dircolors.ansi-universal > ~/.dircolors

fixed iterm2 vim color bug

    $ cd ~/.vim/bundle/vim-colors-solarized
    $ patch -p0 < ~/mac-config/vim-colors-solarized-iterm-patch.diff
    can't find file to patch at input line 5
    Perhaps you used the wrong -p or --strip option?
    The text leading up to this was:
    --------------------------
    |diff --git a/colors/solarized.vim b/colors/solarized.vim
    |index 70f5223..fcd49bc 100644
    |--- a/colors/solarized.vim
    |+++ b/colors/solarized.vim
    --------------------------
    File to patch: ./colors/solarized.vim
    patching file ./colors/solarized.vim
    
