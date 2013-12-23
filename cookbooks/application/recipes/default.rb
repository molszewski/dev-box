include_recipe 'apt-wrapper'
include_recipe 'git'
include_recipe 'java'
include_recipe 'gradle'
include_recipe 'maven'
include_recipe 'application::nvm'

include_recipe 'user::data_bag'
