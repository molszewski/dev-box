#﻿ Adds custom PPAs

node['apt']['ppa'].each do |key, value|

  apt_repository key do
    uri value['uri']
    distribution node['lsb']['codename']
    components ["main"]
    keyserver "keyserver.ubuntu.com"
    key value['key']
    action :add
  end
end