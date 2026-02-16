# Country Calling Code API - Dart/Flutter Client

Country Calling Code is a simple tool for getting the country's international dialing codes. It returns the country's international dialing codes.

[![pub package](https://img.shields.io/pub/v/apiverve_callingcode.svg)](https://pub.dev/packages/apiverve_callingcode)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Country Calling Code API](https://apiverve.com/marketplace/callingcode?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_callingcode: ^1.1.14
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
      'country': 'FR'
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
    ]
  }
}
```

## API Reference

- **API Home:** [Country Calling Code API](https://apiverve.com/marketplace/callingcode?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/callingcode](https://docs.apiverve.com/ref/callingcode?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
