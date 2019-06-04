nginx_config_path = Homebrew.etc_path.join 'nginx'
nginx_configs_path = nginx_config_path.join 'conf'
most_recent_ruby_version = node[:rbenv][:rubies].max
ruby_executable_path = Pathname.new(node[:rbenv][:root]).join 'versions', most_recent_ruby_version, 'bin', 'ruby'
passenger_root = Homebrew.opt_path.join 'passenger/libexec'
nginx_executable_path = Homebrew.bin_path.join('nginx')

directory nginx_configs_path.to_s do
  mode '755'
  owner Console.user
  group 'staff'
end

template nginx_config_path.join('nginx.conf').to_s do
  source 'nginx/nginx.conf.erb'
  variables(
    passenger_root: passenger_root,
    passenger_ruby: ruby_executable_path
    )
  owner Console.user
  group 'staff'
end

projects_path = Pathname.new('~/Code').expand_path

template nginx_configs_path.join('projects.conf').to_s do
  source 'nginx/projects.conf.erb'
  variables(
    projects_path: projects_path.to_s
  )
  owner Console.user
  group 'staff'
end

launchd 'install-nginx-agent' do
  label 'io.github.halo.nginx'
  program nginx_executable_path.to_s
  username Console.user
  run_at_load true
  action :enable
  only_if { nginx_executable_path.executable? }
end