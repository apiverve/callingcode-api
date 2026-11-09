# Country Calling Code API - Dart/Flutter Client

Country Calling Code is a phone number country code API that looks up international dialing codes and official names from a two-letter ISO country code. It returns an array of calling prefixes, standard country identifiers and, on request, the country's exit and trunk prefixes, other regions sharing its code, valid number lengths and example numbers by line type.

[![pub package](https://img.shields.io/pub/v/apiverve_callingcode.svg)](https://pub.dev/packages/apiverve_callingcode)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Country Calling Code API](https://apiverve.com/marketplace/callingcode?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_callingcode: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_callingcode/apiverve_callingcode.dart';

void main() async {
  final client = CallingcodeClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'country': 'FR',
      'dialing': true
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Country Calling Code API](https://apiverve.com/marketplace/callingcode?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/callingcode](https://docs.apiverve.com/ref/callingcode?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
