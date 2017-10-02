[![Gem Version](https://badge.fury.io/rb/capistrano3-puma.svg)](http://badge.fury.io/rb/capistrano3-puma)
# Capistrano::Linuxpl

## Installation

Add this line to your application's Gemfile:

    gem 'capistrano-linuxpl', github: "blaszczakphoto/capistrano-linuxpl"

And then execute:

    $ bundle

## Usage
```ruby
    # Capfile

    require 'capistrano/linuxpl'
```

```ruby
    # deploy.rb

    after 'deploy:log_revision', 'deploy:restart_server'
    before :deploy, :precompile_assets
    after 'deploy:restart_server', 'clean_assets'

```

## Deploy changes to gem
gem build
gem push

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## Using temporary local version of gem
    bundle config local.capistrano-linuxpl /home/mariusz/Projects/Ruby/capistrano-linuxpl
    bundle install
    
