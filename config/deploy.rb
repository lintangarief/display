# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :application, "indisdisplay"
set :repo_url,        'git@github.com:lintangarief/display.git'
set :user,            'root'
set :pty,             true
set :use_sudo,        false
set :deploy_via,      :remote_cache
set :ssh_options,     { forward_agent: true, user: fetch(:user), keys: %w(~/.ssh/id_rsa.pub) }
set :rvm_ruby_version, '2.1.5'
set :passenger_restart_with_sudo, true

set :format,        :pretty
set :log_level,     :debug
set :keep_releases, 5

set :linked_dirs,  %w{log tmp/pids tmp/cache}

namespace :deploy do
  desc 'Symlinks config files for Nginx.'
  task :nginx_symlink do
    on roles(:app) do
      execute "rm -f /etc/nginx/sites-enabled/default"

      execute "sudo ln -nfs #{current_path}/config/nginx.rb /etc/nginx/sites-enabled/#{fetch(:domain)}"
      execute "sudo ln -nfs   /config/nginx.rb /etc/nginx/sites-available/#{fetch(:domain)}"
   end
  end

  desc 'Symlinks Secret.yml to the release path'
  task :secret_symlink do
    on roles(:app) do
      execute "sudo ln -nfs #{shared_path}/secrets.yml #{release_path}/config/secrets.yml"
   end
  end

  after  :updating,     :secret_symlink
  after  :updating,     :nginx_symlink
  after  :finishing,    :compile_assets
  after  :finishing,    :cleanup
  after  :finishing,    :restart
end

namespace :logs do
  desc 'Tail application logs'
  task :tail_app do
    on roles(:app) do
      execute "tail -f #{shared_path}/log/#{fetch(:stage)}.log"
    end
  end
end
# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
