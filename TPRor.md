Partie 0:
  - rails new demo
  - rails server
  - rails generate controller Status hello
  - rails generate scaffold Homade foo:string bar:integer
  - byebug

Partie 1:
  - rails new linker
  - rails server
  - http://localhost:3000

Partie 2:
  - ajouter la gem: gem 'bootstrap-sass', '~> 3.3.2'
  - buundle install
  - rails generate scaffold Link title:string url:string
  - supprimer app/assets/stylesheets/application.css
  - ajouter le fichier application.sass dans app/assets/stylesheets/
  - remplacer app/views/layouts/application.html par application.html
  - supprimer les fichiers dans app/views/links/
  - ajouter les fichiers du dossier links dans app/views/links/
  - ajouter le fichier links_helper.rb dans le dossier app/helpers/
  - créer un formulaire pour l'ajout et l'édition d'un lien
  - modifier le controlleur (ne pas oublier les routes)
  - rake db:migrate
  - http://localhost:3000/links
  - implémenter des tests

Partie 3:
  - rails generate migration AddScoreToLink score:integer
  - migration valeur par default
  - tests du model
  - ajouter increase, decrease au controlleur
  - ajouter les boutons dans la vue

Partie 4:
  - rails generate controller Signin
  - rails generate controller Signup
  - rails generate controller Signout
  - rails generate model User login:string
  - activer la gem: bcrypt
  - ajouter le has_secure_password dans le model
  - ajouter les tests
  - ajouter les boutons dans l'interface

  - rails generate model Vote
  - ajouter les infos dans le model
