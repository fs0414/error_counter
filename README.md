# ErrorCounter
Short description and motivation.

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'error_counter', git: 'https://github.com/soramar/error_counter'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install error_counter
```

Migrations
```
rails railties:install:migrations

rails db:migrate
```

Mount in routers.rb
```
mount ErrorCounter::Engine => "/error_counter"
```

styling in assets/config/manifest.js
```
//= link error_counter/application.css
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
