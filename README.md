# MetaNexus

[![Build Status](https://travis-ci.org/Freika/meta_nexus.svg?branch=master)](https://travis-ci.org/Freika/meta_nexus)
[![Code Climate](https://codeclimate.com/github/Freika/meta_nexus/badges/gpa.svg)](https://codeclimate.com/github/Freika/meta_nexus)
[![Test Coverage](https://codeclimate.com/github/Freika/meta_nexus/badges/coverage.svg)](https://codeclimate.com/github/Freika/meta_nexus/coverage)
[![Dependency Status](https://gemnasium.com/Freika/meta_nexus.svg)](https://gemnasium.com/Freika/meta_nexus)


[TODO list](https://github.com/Freika/meta_nexus/blob/master/TODO.md)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'meta_nexus'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install meta_nexus

## Usage

Configure gem:

```ruby
MetaNexus.config do |c|
  c.region = 'us'
  c.locale = 'en_US'
  c.api_key = 'your_key'
end
```

Default value for region is `eu`, for locale - `en_GB`. Api key can be stored in environment variable `ENV['BNET_API_KEY']`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Freika/meta_nexus.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

