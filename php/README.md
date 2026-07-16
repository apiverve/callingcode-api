# Country Calling Code API - PHP Package

Country Calling Code is a simple tool for getting the country's international dialing codes. It returns the country's international dialing codes.

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
$response = $client->execute(['country' => 'FR']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Callingcode\Client;
use APIVerve\Callingcode\Exceptions\APIException;
use APIVerve\Callingcode\Exceptions\ValidationException;

try {
    $response = $client->execute(['country' => 'FR']);
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
    "subregion": "Western Europe"
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/callingcode?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/callingcode?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/callingcode?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
