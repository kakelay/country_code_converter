<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

```dart
const like = 'sample';
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.



# Country Code Converter

A Flutter package that provides a simple dropdown for selecting country codes and converting them into their full country names.

## Features
- Displays a dropdown list of country codes
- Converts selected country codes into full country names
- Simple and easy-to-use UI

## Installation
Add this dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  country_code_converter: latest_version
```

Then run:

```sh
flutter pub get
```

## Usage

Import the package:

```dart
import 'package:country_code_converter/country_code_converter.dart';
```

Use the `CountryCodeDropdownApp` widget in your Flutter application:

```dart
void main() {
  runApp(CountryCodeDropdownApp());
}
```

### Example

```dart
DropdownButton<String>(
  value: _selectedCode,
  hint: Text('Select Country Code'),
  isExpanded: true,
  items: countryCodes.map((String code) {
    return DropdownMenuItem(
      value: code,
      child: Text(code),
    );
  }).toList(),
  onChanged: (value) {
    setState(() {
      _selectedCode = value;
      _convertedCode = value != null ? CountryCodeConverter.convertToFull(value) : null;
    });
  },
)
```

## Contributing
Contributions are welcome! Please submit a pull request or create an issue if you have any suggestions.

## License
This project is licensed under the MIT License.