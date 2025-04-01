// ignore: unnecessary_library_name
library country_code_converter;

class CountryCodeConverter {
  static final List<List<String>> _countryCodes = [
  ['KH', 'KHM'], // Cambodia
  ['US', 'USA'], // United States
  ['FR', 'FRA'], // France
  ['JP', 'JPN'], // Japan
  ['GB', 'GBR'], // United Kingdom
  ['CN', 'CHN'], // China
  ['IN', 'IND'], // India
  ['DE', 'DEU'], // Germany
  ['CA', 'CAN'], // Canada
  ['AU', 'AUS'], // Australia
  ['BR', 'BRA'], // Brazil
  ['RU', 'RUS'], // Russia
  ['ZA', 'ZAF'], // South Africa
  ['MX', 'MEX'], // Mexico
  ['IT', 'ITA'], // Italy
  ['ES', 'ESP'], // Spain
  ['NL', 'NLD'], // Netherlands
  ['SE', 'SWE'], // Sweden
  ['NO', 'NOR'], // Norway
  ['DK', 'DNK'], // Denmark
  ['FI', 'FIN'], // Finland
  ['TH', 'THA'], // Thailand
  ['VN', 'VNM'], // Vietnam
  ['AF', 'AFG'], // Afghanistan
  ['AL', 'ALB'], // Albania
  ['DZ', 'DZA'], // Algeria
  ['AD', 'AND'], // Andorra
  ['AO', 'AGO'], // Angola
  ['AG', 'ATG'], // Antigua and Barbuda
  ['AR', 'ARG'], // Argentina
  ['AM', 'ARM'], // Armenia
  ['AT', 'AUT'], // Austria
  ['AZ', 'AZE'], // Azerbaijan
  ['BS', 'BHS'], // Bahamas
  ['BH', 'BHR'], // Bahrain
  ['BD', 'BGD'], // Bangladesh
  ['BB', 'BRB'], // Barbados
  ['BY', 'BLR'], // Belarus
  ['BE', 'BEL'], // Belgium
  ['BZ', 'BLZ'], // Belize
  ['BJ', 'BEN'], // Benin
  ['BT', 'BTN'], // Bhutan
  ['BO', 'BOL'], // Bolivia
  ['BA', 'BIH'], // Bosnia and Herzegovina
  ['BW', 'BWA'], // Botswana
  ['BG', 'BGR'], // Bulgaria
  ['BF', 'BFA'], // Burkina Faso
  ['BI', 'BDI'], // Burundi
  ['CV', 'CPV'], // Cabo Verde
  ['CM', 'CMR'], // Cameroon
  ['CL', 'CHL'], // Chile
  ['CO', 'COL'], // Colombia
  ['KM', 'COM'], // Comoros
  ['CG', 'COG'], // Congo
  ['CD', 'COD'], // Congo, Democratic Republic of the
  ['CR', 'CRI'], // Costa Rica
  ['CI', 'CIV'], // Côte d'Ivoire
  ['HR', 'HRV'], // Croatia
  ['CU', 'CUB'], // Cuba
  ['CY', 'CYP'], // Cyprus
  ['CZ', 'CZE'], // Czechia
  ['DJ', 'DJI'], // Djibouti
  ['DM', 'DMA'], // Dominica
  ['DO', 'DOM'], // Dominican Republic
  ['EC', 'ECU'], // Ecuador
  ['EG', 'EGY'], // Egypt
  ['SV', 'SLV'], // El Salvador
  ['GQ', 'GNQ'], // Equatorial Guinea
  ['ER', 'ERI'], // Eritrea
  ['EE', 'EST'], // Estonia
  ['SZ', 'SWZ'], // Eswatini
  ['ET', 'ETH'], // Ethiopia
  ['FJ', 'FJI'], // Fiji
  ['GA', 'GAB'], // Gabon
  ['GM', 'GMB'], // Gambia
  ['GE', 'GEO'], // Georgia
  ['GH', 'GHA'], // Ghana
  ['GR', 'GRC'], // Greece
  ['GD', 'GRD'], // Grenada
  ['GT', 'GTM'], // Guatemala
  ['GN', 'GIN'], // Guinea
  ['GW', 'GNB'], // Guinea-Bissau
  ['GY', 'GUY'], // Guyana
  ['HT', 'HTI'], // Haiti
  ['HN', 'HND'], // Honduras
  ['HU', 'HUN'], // Hungary
  ['IS', 'ISL'], // Iceland
  ['ID', 'IDN'], // Indonesia
  ['IR', 'IRN'], // Iran
  ['IQ', 'IRQ'], // Iraq
  ['IE', 'IRL'], // Ireland
  ['IL', 'ISR'], // Israel
  ['JM', 'JAM'], // Jamaica
  ['JO', 'JOR'], // Jordan
  ['KZ', 'KAZ'], // Kazakhstan
  ['KE', 'KEN'], // Kenya
  ['KI', 'KIR'], // Kiribati
  ['KP', 'PRK'], // Korea, North
  ['KR', 'KOR'], // Korea, South
  ['KW', 'KWT'], // Kuwait
  ['KG', 'KGZ'], // Kyrgyzstan
  ['LA', 'LAO'], // Laos
  ['LV', 'LVA'], // Latvia
  ['LB', 'LBN'], // Lebanon
  ['LS', 'LSO'], // Lesotho
  ['LR', 'LBR'], // Liberia
  ['LY', 'LBY'], // Libya
  ['LI', 'LIE'], // Liechtenstein
  ['LT', 'LTU'], // Lithuania
  ['LU', 'LUX'], // Luxembourg
  ['MG', 'MDG'], // Madagascar
  ['MW', 'MWI'], // Malawi
  ['MY', 'MYS'], // Malaysia
  ['MV', 'MDV'], // Maldives
  ['ML', 'MLI'], // Mali
  ['MT', 'MLT'], // Malta
  ['MH', 'MHL'], // Marshall Islands
  ['MR', 'MRT'], // Mauritania
  ['MU', 'MUS'], // Mauritius
  ['FM', 'FSM'], // Micronesia, Federated States of
  ['MD', 'MDA'], // Moldova
  ['MC', 'MCO'], // Monaco
  ['MN', 'MNG'], // Mongolia
  ['ME', 'MNE'], // Montenegro
  ['MA', 'MAR'], // Morocco
  ['MZ', 'MOZ'], // Mozambique
  ['MM', 'MMR'], // Myanmar
  ['NA', 'NAM'], // Namibia
  ['NR', 'NRU'], // Nauru
  ['NP', 'NPL'], // Nepal
  ['NZ', 'NZL'], // New Zealand
  ['NI', 'NIC'], // Nicaragua
  ['NE', 'NER'], // Niger
  ['NG', 'NGA'], // Nigeria
  ['MK', 'MKD'], // North Macedonia
  ['OM', 'OMN'], // Oman
  ['PK', 'PAK'], // Pakistan
  ['PW', 'PLW'], // Palau
  ['PA', 'PAN'], // Panama
  ['PG', 'PNG'], // Papua New Guinea
  ['PY', 'PRY'], // Paraguay
  ['PE', 'PER'], // Peru
  ['PH', 'PHL'], // Philippines
  ['PL', 'POL'], // Poland
  ['PT', 'PRT'], // Portugal
  ['QA', 'QAT'], // Qatar
  ['RO', 'ROU'], // Romania
  ['RW', 'RWA'], // Rwanda
  ['KN', 'KNA'], // Saint Kitts and Nevis
  ['LC', 'LCA'], // Saint Lucia
  ['VC', 'VCT'], // Saint Vincent and the Grenadines
  ['WS', 'WSM'], // Samoa
  ['SM', 'SMR'], // San Marino
  ['ST', 'STP'], // Sao Tome and Principe
  ['SA', 'SAU'], // Saudi Arabia
  ['SN', 'SEN'], // Senegal
  ['RS', 'SRB'], // Serbia
  ['SC', 'SYC'], // Seychelles
  ['SL', 'SLE'], // Sierra Leone
  ['SG', 'SGP'], // Singapore
  ['SK', 'SVK'], // Slovakia
  ['SI', 'SVN'], // Slovenia
  ['SB', 'SLB'], // Solomon Islands
  ['SO', 'SOM'], // Somalia
  ['LK', 'LKA'], // Sri Lanka
  ['SD', 'SDN'], // Sudan
  ['SR', 'SUR'], // Suriname
  ['CH', 'CHE'], // Switzerland
  ['SY', 'SYR'], // Syria
  ['TW', 'TWN'], // Taiwan
  ['TJ', 'TJK'], // Tajikistan
  ['TZ', 'TZA'], // Tanzania
  ['TL', 'TLS'], // Timor-Leste
  ['TG', 'TGO'], // Togo
  ['TO', 'TON'], // Tonga
  ['TT', 'TTO'], // Trinidad and Tobago
  ['TN', 'TUN'], // Tunisia
  ['TR', 'TUR'], // Turkey
  ['TM', 'TKM'], // Turkmenistan
  ['TV', 'TUV'], // Tuvalu
  ['UG', 'UGA'], // Uganda
  ['UA', 'UKR'], // Ukraine
  ['AE', 'ARE'], // United Arab Emirates
  ['UY', 'URY'], // Uruguay
  ['UZ', 'UZB'], // Uzbekistan
  ['VU', 'VUT'], // Vanuatu
  ['VA', 'VAT'], // Vatican City
  ['VE', 'VEN'], // Venezuela
  ['YE', 'YEM'], // Yemen
  ['ZM', 'ZMB'], // Zambia
  ['ZW', 'ZWE'], // Zimbabwe
];


  /// Converts an ISO Alpha-2 country code to an ISO Alpha-3 country code.
  /// Returns `null` if the country code is not found.
  static String? convertToFull(String code) {
    code = code.toUpperCase();
    for (var entry in _countryCodes) {
      if (entry[0] == code) {
        return entry[1];
      }
    }
    return null;
  }
}
