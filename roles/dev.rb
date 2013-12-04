name "dev_box"
description "Developer Box with Ubuntu 12.04"

default_attributes(
    :java => {
        :install_flavor => "oracle",
        :jdk_version => 7,
        :jdk => {
            "7" => {
                :x86_64 => {
                    :url => "http://download.oracle.com/otn-pub/java/jdk/7u45-b18/jdk-7u45-linux-x64.tar.gz",
                    :checksum => "f2eae4d81c69dfa79d02466d1cb34db2b628815731ffc36e9b98f96f46f94b1a"
                }
            }
        },
        :oracle => {
            :accept_oracle_download_terms => true
        }
    }
)

run_list(
    "recipe[apt]",
    "recipe[git]",
    "recipe[java]"
)