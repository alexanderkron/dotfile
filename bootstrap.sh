# Variables ##############
dir=~/dotfiles                                       # dotfiles directory
olddir=~/dotfiles_old                                # old dotfiles backup directory
files=".vimrc .zshrc .gitconfig .gitignore_global"   # list of files/folders to symlink in homedir


# Symlinks ###############
# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    rm -f ~/dotfiles_old/$file
    cp -f ~/$file ~/dotfiles_old/
    rm -f ~/$file
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
done


# Vim setup ###############
# Install AG
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
    yum install -y pcre-devel
    yum install xz-devel
    git clone https://github.com/ggreer/the_silver_searcher ag && cd ag && ./build.sh && sudo make install
    rm -rf ~/dotfiles/ag
fi

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    echo "Getting vundle"
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

vim +PluginInstall +qall


# ZSH setup
echo "Getting antigen"
if [ ! -d ~/.antigen ]; then
    echo "Installing antigen"
    mkdir ~/.antigen
    git clone https://github.com/zsh-users/antigen.git ~/.antigen
fi

zsh
