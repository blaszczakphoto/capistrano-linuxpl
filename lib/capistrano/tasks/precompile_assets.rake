# encoding: utf-8

require 'capistrano'

task :precompile_assets do
  run_locally do
    stage = fetch(:stage, "production")
    puts "stage - #{stage}"
    execute(:rm, "-rf public/assets/*")
    execute(:rm, "-rf public/assets/.sprockets-manifest*")
    execute("RAILS_ENV=#{stage}", "rake assets:precompile")
    execute('git add . && git commit -m "update assets" && git push')
  end
end