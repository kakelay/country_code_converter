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

### **Steps to Follow**
1. **Update your `README.md`** with the provided content.
2. **Save the file**.
3. Run this command to publish your package again:

   ```sh
   dart pub publish
   ```

This should resolve the issue, and your package should be ready for publishing. Let me know if you need further assistance!