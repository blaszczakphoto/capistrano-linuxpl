require 'capistrano'

load File.expand_path("../tasks/precompile_assets.rake", __FILE__)
load File.expand_path("../tasks/restart_server.rake", __FILE__)
load File.expand_path("../tasks/clean_assets.rake", __FILE__)