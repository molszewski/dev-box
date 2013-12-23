override[:java] = {
    :install_flavor => 'oracle',
    :jdk_version => '7',
    :jdk => {
        "7" => {
            :x86_64 => {
                :url => 'http://download.oracle.com/otn-pub/java/jdk/7u45-b18/jdk-7u45-linux-x64.tar.gz',
                :checksum => 'f2eae4d81c69dfa79d02466d1cb34db2b628815731ffc36e9b98f96f46f94b1a'
            }
        }
    },
    :oracle => {
        :accept_oracle_download_terms => true
    }
}

override[:gradle] = {
  :version => '1.9',
  :url => 'http://services.gradle.org/distributions/gradle-1.9-bin.zip'
}

override[:maven] = {
 '3' => {
     :url => 'http://apache.mirrors.tds.net/maven/maven-3/3.1.1/binaries/apache-maven-3.1.1-bin.tar.gz',
     :checksum => '077ed466455991d5abb4748a1d022e2d2a54dc4d557c723ecbacdc857c61d51b'
  }
}

override[:nvm][:node][:version] = 'v0.10.22'
override[:users] = ['devbox']