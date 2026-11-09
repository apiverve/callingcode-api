# Country Calling Code API - PHP Package

Country Calling Code is a phone number country code API that looks up international dialing codes and official names from a two-letter ISO country code. It returns an array of calling prefixes, standard country identifiers and, on request, the country's exit and trunk prefixes, other regions sharing its code, valid number lengths and example numbers by line type.

## Installation

Install via Composer:

```bash
composer require apiverve/callingcode
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Callingcode\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'country' => 'FR',
    'dialing' => true
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Callingcode\Client;
use APIVerve\Callingcode\Exceptions\APIException;
use APIVerve\Callingcode\Exceptions\ValidationException;

try {
    $response = $client->execute(['country' => 'FR', 'dialing' => true]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/callingcode?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/callingcode?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/callingcode?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
