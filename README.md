Here’s the updated and cleaned-up code for your `README.md` to ensure there are no placeholder comments:

### **Updated `README.md`**

```md
# Country Code Converter

A Flutter package that provides a simple dropdown for selecting country codes and converting them into their full country names.

## Features
- Displays a dropdown list of country codes.
- Converts selected country codes into full country names.
- Simple and easy-to-use UI.

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
```

MIT License

Copyright (c) 2024 [Kak Elay]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
