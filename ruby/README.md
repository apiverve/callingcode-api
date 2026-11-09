# Country Calling Code API - Ruby Gem

Country Calling Code is a phone number country code API that looks up international dialing codes and official names from a two-letter ISO country code. It returns an array of calling prefixes, standard country identifiers and, on request, the country's exit and trunk prefixes, other regions sharing its code, valid number lengths and example numbers by line type.

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
response = client.execute({
  country: "FR",
  dialing: true
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ country: "FR", dialing: true })
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
    "subregion": "Western Europe",
    "dialing": {
      "internationalPrefix": "00",
      "nationalPrefix": "0",
      "sharedWith": [],
      "possibleLengths": {
        "fixedLine": [
          9
        ],
        "mobile": [
          9
        ],
        "tollFree": [
          9
        ]
      },
      "exampleNumbers": {
        "fixedLine": {
          "international": "+33 1 23 45 67 89",
          "national": "01 23 45 67 89",
          "e164": "+33123456789"
        },
        "mobile": {
          "international": "+33 6 12 34 56 78",
          "national": "06 12 34 56 78",
          "e164": "+33612345678"
        },
        "tollFree": {
          "international": "+33 801 23 45 67",
          "national": "0 801 23 45 67",
          "e164": "+33801234567"
        }
      }
    }
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
