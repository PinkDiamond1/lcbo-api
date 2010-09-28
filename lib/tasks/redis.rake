namespace :redis do
  task :start do
    config_file = Rails.env.production? ? 'redis-production.conf' : 'redis.conf'
    system "redis-server #{Rails.root + 'config' + config_file}"
  end
end