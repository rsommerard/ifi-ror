# ifi-ror

Ruby on Rails application for IFI course.

# Liens utiles

  - http://ruby-doc.org/
  - http://api.rubyonrails.org/
  - http://guides.rubyonrails.org/

# Installation de Ruby avec RVM

  - `cd`
  - `gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3`
  - `curl -sSL https://get.rvm.io | bash -s stable`
  - `source .rvm/scripts/rvm`
  - `rvm install 2.2`
  - `rvm use 2.2 --default`

# Installation de Rails

  - `gem install rails --no-ri --no-rdoc`

# Commandes utiles

  - `rails new app`
  - `rails server`
  - `rails generate controller welcome index`
  - `rake routes`
  - `rake db:migrate`
  - `rake test`

# Partie 1: Récupérer les ressources

  - `git clone http://github.com/rsommerard/ifi-ror.git`
  - `cd ifi-ror/linky`
  - `rails server`
