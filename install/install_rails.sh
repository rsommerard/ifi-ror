#!/bin/bash

./ybur.sh
rvm use ruby-2.2.3 --default
gem install hoe-3.14.2.gem
gem install minitest-5.8.1.gem
gem install rails --no-ri --no-rdoc

