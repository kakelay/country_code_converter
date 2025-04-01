import 'package:country_code_converter/country_code_converter.dart';
import 'package:test/test.dart';

void main() {
  test('convertToFull should return correct ISO Alpha-3 code', () {
    expect(CountryCodeConverter.convertToFull('KH'), 'KHM');
    expect(CountryCodeConverter.convertToFull('US'), 'USA');
    expect(CountryCodeConverter.convertToFull('FR'), 'FRA');
    expect(CountryCodeConverter.convertToFull('JP'), 'JPN');
  });

  test('convertToFull should return null for invalid codes', () {
    expect(CountryCodeConverter.convertToFull('XYZ'), null);
  });
}
