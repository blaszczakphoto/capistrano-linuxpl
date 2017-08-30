# encoding: utf-8

require 'capistrano'

task :clean_assets do
  run_locally do
    execute(:rm, "-rf public/assets/*")
    execute(:rm, "-rf public/assets/.sprockets-manifest*")
    execute(:rm, "-rf public/webpack/production/*")
    execute('git add . && git commit -m "clean assets after deployment"')
    execute("git push origin #{fetch(:branch)}")
  end
end