#!/bin/bash

### TEMP
DOTFILES=$HOME/.dotfiles

dotfiles_tarball_path="https://github.com/jonyonson/dotfiles/tarball/master"

red=$( tput setaf 1 || tput AF 1 )
green=$( tput setaf 2 || tput AF 2 )
yellow=$( tput setaf 3 || tput AF 3)
blue=$( tput setaf 4 || tput AF 4 )
under=$( tput smul || tput us )
eunder=$( tput rmul || tput ue )
reset=$( tput sgr0 || tput me )


input_dir () {
  echo "Enter a new directory for your dotfiles:"
  read dotfiles
  printf "\nCreating a new dotfile directory "
  # check that the directory does not exist
  if [ ! -e "$dotfiles" ]
  then
    mkdir $dotfiles
    printf ${green}➜${reset}
    printf " Your dotfiles will be installed into $dotfiles"
  else
    printf ${red}➜${reset}
    printf " $dotfiles already exists...\n\n"
    input_dir
  fi
}


create_symlink () {
  # TODO: change this do check and see if it exists
  ### TESTING
  mv $dotfiles/testing/$1 $dotfiles/backup/$1.bak 2> /dev/null
  #mv $HOME/$1 $dotfiles/backup/$1.bak 2> /dev/null

  # Create symlink
  ### TESTING
  ln -s $dotfiles/symlink/$1 $dotfiles/testing/$1
  #ln -sv $dotfiles/symlink/$1 $HOME/$1
}


clear
printf "Jonathan Taylor\n"
printf "https://github.com/jonyonson/dotfiles\n"
printf "dev.jonathan.taylorg@gmail.com\n"
printf "\n"
input_dir
printf "\n"

# Get the tarball TODO: switch to git clone
printf "\nDownloading tarball "
#curl -fsSLo $HOME/dotfiles.tar.gz $dotfiles_tarball_path
printf ${green}✔︎${reset}
printf "\n"

# Extract to the dotfiles directory
printf "\nExtracting files to $dotfiles "
cp -R $DOTFILES/* $dotfiles
#tar -zxf $HOME/dotfiles.tar.gz --strip-components 1 -C $dotfiles;
printf ${green}✔︎${reset}
printf "\n"
# Remove the tarball
#rm -rf $HOME/dotfiles.tar.gz
cd $dotfiles
mkdir $dotfiles/backup

# TEMP - TESTTING
########
mkdir $dotfiles/testing
echo "old bashrc" >> $dotfiles/testing/.bashrc

################


shopt -s dotglob
for file in $dotfiles/symlink/*
do
  name=${file##*/}
  create_symlink $name
done
unset file
unset name

# TODO link private dotfiles
#ln -sv ~/.dotfiles/private/.gitconfig.local ~/.gitconfig.local
#ln -sv ~/.dotfiles/private/.extra ~/.extra
#ln -sv ~/.dotfiles/private/.npmrc ~/.npmrc


# EXIT
#############
printf "\n"
exit













#IFS= read -n 1 -r -s -p "Press ENTER to continue or any other key to abort..." key

#if [[ "$key" = '' ]]; then
#    printf "\n\nCreating ~/.dotfiles  "
#else
#    printf "\n\nNothing was installed.\n" && exit 0
#fi


#if [[ ! -d $dotfiles ]]; then
#    mkdir $dotfiles
#    printf ${green}'\u2714'${reset}
    # Get the tarball
    #printf "\nDownloading tarball  "
    #curl -fsSLo $HOME/dotfiles.tar.gz $dotfiles_tarball_path
    #printf ${green}'\u2714'${reset}
    # Extract to the dotfiles directory
    #printf "\nExtracting files to ~/dotfiles  "
    #tar -zxf $HOME/dotfiles.tar.gz --strip-components 1 -C $dotfiles;
    #printf ${green}'\u2714'${reset}
    # Remove the tarball
    #rm -rf $HOME/dotfiles.tar.gz
#else
#    printf "${red}\u2717\n\n==>${reset} $dotfiles already exists. Nothing was installed.\n\n" && exit 1
#fi

#cd $dotfiles;
#printf "\n"
#printf "DONE"
#printf "\n"

#printf "\n\n"
#printf "\nSymobolic links will be created in your \$HOME directory.\n"
#printf "Any files that already exist will be backed up at $dotfiles/.bak\n"
#IFS= read -n 1 -r -s -p "Press ENTER to continue or any other key to abort..." key
#printf "\n\n"

# if a file exists it will be saved to ~/dotfiles/.bak/

#create_symlink () {
#  mv $HOME/$1 $dotfiles/.bak/$1.bak 2> /dev/null
#  ln -sv $dotfiles/symlink/$1 $HOME/$1
  #printf "\n${green}==>${reset} $HOME/$1 -> $dotfiles/$1"
#}

#mkdir $dotfiles/.bak

#shopt -s dotglob
#for file in $dotfiles/symlink/*
#do
#  name=${file##*/}
#  create_symlink $name
#done
#unset file
#unset name


# for my non-committed dot files
#for file in $HOME/.dotfiles/private/*
#do
#  ln -sv $file $HOME/$name 2> /dev/null
#done
#unset file

#shopt -u dotglob
#cd $dotfiles && rm .gitignore install

#printf "\n\nEnter 'source ~/.bashrc' to reset shell.\n\n" && exit 0
