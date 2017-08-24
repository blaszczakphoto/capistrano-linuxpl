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
    install_plugin Capistrano::Puma  # Default puma tasks
    install_plugin Capistrano::Puma::Workers  # if you want to control the workers (in cluster mode)
```

To prevent loading the hooks of the plugin, add false to the load_hooks param.
```ruby
    # Capfile

    require 'capistrano/puma'
    install_plugin Capistrano::Puma, load_hooks: false  # Default puma tasks without hooks
    install_plugin Capistrano::Puma::Monit, load_hooks: false  # Monit tasks without hooks
```

### Config

To list available tasks use `cap -T`

To upload puma config use:
```ruby
cap production puma:config
```
By default the file located in  `shared/puma.config`



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
