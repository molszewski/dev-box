include_recipe 'nvm'

nvm_install node[:nvm][:node][:version]  do
  from_source false
  alias_as_default true
  action :create
end