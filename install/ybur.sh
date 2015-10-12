#!/bin/bash

##### INSTALLATION RUBY #######
# Pour installer RVM - Le package curl doit être installer au préalable - apt-get install curl
# Installer les librairies nécessaires à la compilation - Au M5 et SUP, les librairies sont présinstallées.
# apt-get install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev 
# autoconf libc6-dev ncurses-dev automake libtool bison subversion

# Il sera possible de changer de version de Ruby aprés l'installation de rvm . 
# Ruby gère le multi versionning - rvm list known pour obtenir la liste des environnements
RUBY_VERSION="ruby-2.2.3" # LAST VERSION

# EXPORT PROXY - SALLE A Uniquement
export {http,https}_proxy=http://cache-etu.univ-lille1.fr:3128

# INSTALLATION CLE DE SECURITE GPG
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

# INSTALLATION RVM - Ruby Version Manager
\curl -sSL https://get.rvm.io | bash -s -- --ignore-dotfiles --autolibs=0


# Modification du PATH RVM
echo "source $HOME/.rvm/scripts/rvm" >> ~/.bashrc

# INSTALLATION DE VOTRE VERSION DE RUBY
. $HOME/.rvm/scripts/rvm
rvm reload
rvm autolibs fail
# La commande rvm requirements permet d'installer les librairies manquantes nécessaires à la compilation.
# rvm requirements - installer manuellement si autre que M5 ou SUP - sudo ou root permissions
rvm install ${RUBY_VERSION} 
rvm use ${RUBY_VERSION} --default --create
