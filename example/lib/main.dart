import 'package:flutter/material.dart';
import 'package:country_code_converter/country_code_converter.dart';

void main() {
  runApp(CountryCodeDropdownApp());
}

class CountryCodeDropdownApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CountryCodeDropdownScreen(),
    );
  }
}

class CountryCodeDropdownScreen extends StatefulWidget {
  @override
  _CountryCodeDropdownScreenState createState() =>
      _CountryCodeDropdownScreenState();
}

class _CountryCodeDropdownScreenState extends State<CountryCodeDropdownScreen> {
  String? _selectedCode;
  String? _convertedCode;

final List<String> countryCodes = [
  'AF', 'AL', 'DZ', 'AS', 'AD', 'AO', 'AI', 'AQ', 'AR', 'AM', 'AW', 'AU', 'AT', 'AZ', 'BS', 'BH', 'BD', 'BB', 'BY', 'BE',
  'BF', 'BI', 'KH', 'CM', 'CA', 'CV', 'KY', 'CF', 'TD', 'CL', 'CN', 'CO', 'KM', 'CG', 'CD', 'CK', 'CR', 'CI', 'HR', 'CU',
  'CY', 'CZ', 'DK', 'DJ', 'DM', 'DO', 'EC', 'EG', 'SV', 'GQ', 'ER', 'EE', 'ET', 'FO', 'FJ', 'FI', 'FR', 'GA', 'GM', 'GE',
  'DE', 'GH', 'GI', 'GR', 'GL', 'GD', 'GP', 'GU', 'GT', 'GN', 'GW', 'GY', 'HT', 'HN', 'HK', 'HU', 'IS', 'IN', 'ID', 'IR',
  'IQ', 'IE', 'IL', 'IT', 'JM', 'JP', 'JO', 'KZ', 'KE', 'KI', 'KP', 'KR', 'KW', 'KG', 'LA', 'LV', 'LB', 'LS', 'LR', 'LY',
  'LI', 'LT', 'LU', 'MO', 'MK', 'MW', 'MY', 'MV', 'ML', 'MT', 'MH', 'MQ', 'MR', 'MU', 'YT', 'MX', 'FM', 'MD', 'MC', 'MN',
  'ME', 'MA', 'MZ', 'MM', 'NA', 'NR', 'NP', 'NL', 'NC', 'NZ', 'NI', 'NE', 'NG', 'NU', 'NF', 'NO', 'NP', 'OM', 'PK', 'PW',
  'PA', 'PG', 'PY', 'PE', 'PH', 'PL', 'PT', 'PR', 'QA', 'RO', 'RU', 'RW', 'RE', 'ST', 'SA', 'SN', 'RS', 'SC', 'SL', 'SG',
  'SK', 'SI', 'SB', 'SO', 'ZA', 'SS', 'ES', 'LK', 'SD', 'SR', 'SZ', 'SE', 'CH', 'SY', 'TW', 'TJ', 'TZ', 'TH', 'TG', 'TO',
  'TT', 'TN', 'TR', 'TM', 'TC', 'TV', 'UG', 'UA', 'AE', 'GB', 'US', 'UY', 'UZ', 'VU', 'VE', 'VN', 'WF', 'YE', 'ZM', 'ZW',
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Country Code Dropdown Converter')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: _selectedCode,
              hint: Text('Select Country Code'),
              isExpanded: true,
              items:
                  countryCodes.map((String code) {
                    return DropdownMenuItem(value: code, child: Text(code));
                  }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedCode = value;
                  _convertedCode =
                      value != null
                          ? CountryCodeConverter.convertToFull(value)
                          : null;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              _convertedCode != null
                  ? 'Full Code: $_convertedCode'
                  : 'Select a code to convert',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
