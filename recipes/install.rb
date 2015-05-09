package "java-1.7.0-openjdk"

jruby_version = "1.7.20"

jruby_bin = sprintf("/usr/local/src/jruby-%s/bin", jruby_version)

execute "Download JRuby File" do
  command sprintf("wget https://s3.amazonaws.com/jruby.org/downloads/%s/jruby-bin-%s.tar.gz -O /usr/local/src/jruby.tgz", jruby_version, jruby_version)
  cwd "/usr/local/src/"
  not_if "test $(ls /usr/local/src/jruby.tgz)"
end

execute "Unzip Tar File" do
  command "tar xzvf jruby.tgz"
  cwd "/usr/local/src/"
  not_if sprintf("test $(ls /usr/local/src/jruby-%s)", jruby_version)
end

template "/home/vagrant/.bashrc" do
  action :create
  source "templates/bashrc"
  variables(jruby_path: sprintf("/usr/local/src/jruby-%s", jruby_version))
end

execute "Install Norikra" do
  command sprintf("PATH=%s:$PATH;gem install norikra", jruby_bin)
  not_if "test $(which norikra)"
end

