# LolStatic

Fetches static content from the league of legends CDN

## Installation

Add this line to your application's Gemfile:

    gem 'lol_static'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lol_static

## Usage

```ruby
client = LolStatic::Client.new

item = client.item(1234) # Endpoints exist for items, spells, and champions

item.image_url # Returns the url for the image
item.read # Returns the image
item.download('/path') # Downloads the image to /path
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
