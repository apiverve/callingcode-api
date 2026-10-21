# Country Calling Code API - Ruby Gem

Country Calling Code is a phone number country code API that looks up international dialing codes and official names from a two-letter ISO country code. It returns an array of calling prefixes and standard country identifiers.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_callingcode'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_callingcode
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_callingcode'

# Initialize the client
client = APIVerve::Callingcode::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ country: "FR" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ country: "FR" })
  puts response["data"]
rescue APIVerve::Callingcode::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Callingcode::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Callingcode::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "country": "France",
    "officialName": "French Republic",
    "countryCode": "FR",
    "callingcodes": [
      "+33"
    ],
    "region": "Europe",
    "subregion": "Western Europe"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/callingcode?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/callingcode?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/callingcode?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
