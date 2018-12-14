import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter FormBuilder Demo',
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const mockResults = <AppProfile>[
      AppProfile('Andrew', 'stock@man.com',
          'https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX4057996.jpg'),
      AppProfile('Paul', 'paul@google.com',
          'https://mbtskoudsalg.com/images/person-stock-image-png.png'),
      AppProfile('Fred', 'fred@google.com',
          'https://media.istockphoto.com/photos/feeling-great-about-my-corporate-choices-picture-id507296326'),
      AppProfile('Brian', 'brian@flutter.io',
          'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png'),
      AppProfile('John', 'john@flutter.io',
          'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png'),
      AppProfile('Thomas', 'thomas@flutter.io',
          'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png'),
      AppProfile('Nelly', 'nelly@flutter.io',
          'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png'),
      AppProfile('Marie', 'marie@flutter.io',
          'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png'),
      AppProfile('Charlie', 'charlie@flutter.io',
          'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png'),
      AppProfile('Diana', 'diana@flutter.io',
          'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png'),
      AppProfile('Ernie', 'ernie@flutter.io',
          'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png'),
      AppProfile('Gina', 'fred@flutter.io',
          'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png'),
    ];

    const allCountries = [
      "Afghanistan",
      "Albania",
      "Algeria",
      "American Samoa",
      "Andorra",
      "Angola",
      "Anguilla",
      "Antarctica",
      "Antigua and Barbuda",
      "Argentina",
      "Armenia",
      "Aruba",
      "Australia",
      "Austria",
      "Azerbaijan",
      "Bahamas",
      "Bahrain",
      "Bangladesh",
      "Barbados",
      "Belarus",
      "Belgium",
      "Belize",
      "Benin",
      "Bermuda",
      "Bhutan",
      "Bolivia",
      "Bosnia and Herzegowina",
      "Botswana",
      "Bouvet Island",
      "Brazil",
      "British Indian Ocean Territory",
      "Brunei Darussalam",
      "Bulgaria",
      "Burkina Faso",
      "Burundi",
      "Cambodia",
      "Cameroon",
      "Canada",
      "Cape Verde",
      "Cayman Islands",
      "Central African Republic",
      "Chad",
      "Chile",
      "China",
      "Christmas Island",
      "Cocos (Keeling) Islands",
      "Colombia",
      "Comoros",
      "Congo",
      "Congo, the Democratic Republic of the",
      "Cook Islands",
      "Costa Rica",
      "Cote d'Ivoire",
      "Croatia (Hrvatska)",
      "Cuba",
      "Cyprus",
      "Czech Republic",
      "Denmark",
      "Djibouti",
      "Dominica",
      "Dominican Republic",
      "East Timor",
      "Ecuador",
      "Egypt",
      "El Salvador",
      "Equatorial Guinea",
      "Eritrea",
      "Estonia",
      "Ethiopia",
      "Falkland Islands (Malvinas)",
      "Faroe Islands",
      "Fiji",
      "Finland",
      "France",
      "France Metropolitan",
      "French Guiana",
      "French Polynesia",
      "French Southern Territories",
      "Gabon",
      "Gambia",
      "Georgia",
      "Germany",
      "Ghana",
      "Gibraltar",
      "Greece",
      "Greenland",
      "Grenada",
      "Guadeloupe",
      "Guam",
      "Guatemala",
      "Guinea",
      "Guinea-Bissau",
      "Guyana",
      "Haiti",
      "Heard and Mc Donald Islands",
      "Holy See (Vatican City State)",
      "Honduras",
      "Hong Kong",
      "Hungary",
      "Iceland",
      "India",
      "Indonesia",
      "Iran (Islamic Republic of)",
      "Iraq",
      "Ireland",
      "Israel",
      "Italy",
      "Jamaica",
      "Japan",
      "Jordan",
      "Kazakhstan",
      "Kenya",
      "Kiribati",
      "Korea, Democratic People's Republic of",
      "Korea, Republic of",
      "Kuwait",
      "Kyrgyzstan",
      "Lao, People's Democratic Republic",
      "Latvia",
      "Lebanon",
      "Lesotho",
      "Liberia",
      "Libyan Arab Jamahiriya",
      "Liechtenstein",
      "Lithuania",
      "Luxembourg",
      "Macau",
      "Macedonia, The Former Yugoslav Republic of",
      "Madagascar",
      "Malawi",
      "Malaysia",
      "Maldives",
      "Mali",
      "Malta",
      "Marshall Islands",
      "Martinique",
      "Mauritania",
      "Mauritius",
      "Mayotte",
      "Mexico",
      "Micronesia, Federated States of",
      "Moldova, Republic of",
      "Monaco",
      "Mongolia",
      "Montserrat",
      "Morocco",
      "Mozambique",
      "Myanmar",
      "Namibia",
      "Nauru",
      "Nepal",
      "Netherlands",
      "Netherlands Antilles",
      "New Caledonia",
      "New Zealand",
      "Nicaragua",
      "Niger",
      "Nigeria",
      "Niue",
      "Norfolk Island",
      "Northern Mariana Islands",
      "Norway",
      "Oman",
      "Pakistan",
      "Palau",
      "Panama",
      "Papua New Guinea",
      "Paraguay",
      "Peru",
      "Philippines",
      "Pitcairn",
      "Poland",
      "Portugal",
      "Puerto Rico",
      "Qatar",
      "Reunion",
      "Romania",
      "Russian Federation",
      "Rwanda",
      "Saint Kitts and Nevis",
      "Saint Lucia",
      "Saint Vincent and the Grenadines",
      "Samoa",
      "San Marino",
      "Sao Tome and Principe",
      "Saudi Arabia",
      "Senegal",
      "Seychelles",
      "Sierra Leone",
      "Singapore",
      "Slovakia (Slovak Republic)",
      "Slovenia",
      "Solomon Islands",
      "Somalia",
      "South Africa",
      "South Georgia and the South Sandwich Islands",
      "Spain",
      "Sri Lanka",
      "St. Helena",
      "St. Pierre and Miquelon",
      "Sudan",
      "Suriname",
      "Svalbard and Jan Mayen Islands",
      "Swaziland",
      "Sweden",
      "Switzerland",
      "Syrian Arab Republic",
      "Taiwan, Province of China",
      "Tajikistan",
      "Tanzania, United Republic of",
      "Thailand",
      "Togo",
      "Tokelau",
      "Tonga",
      "Trinidad and Tobago",
      "Tunisia",
      "Turkey",
      "Turkmenistan",
      "Turks and Caicos Islands",
      "Tuvalu",
      "Uganda",
      "Ukraine",
      "United Arab Emirates",
      "United Kingdom",
      "United States",
      "United States Minor Outlying Islands",
      "Uruguay",
      "Uzbekistan",
      "Vanuatu",
      "Venezuela",
      "Vietnam",
      "Virgin Islands (British)",
      "Virgin Islands (U.S.)",
      "Wallis and Futuna Islands",
      "Western Sahara",
      "Yemen",
      "Yugoslavia",
      "Zambia",
      "Zimbabwe"
    ];

    //untuk mengambil text value dari inputan (Combobox)
    FormInputController FleetDropdownController = new FormInputController();

    //untuk mengambil form data
    FormController formController = new FormController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter FormBuilder Example'),
      ),
      body: Container(
        margin: EdgeInsets.all(15.0),
        child: FormBuilder(
          context,
          controller: formController,
          autovalidate: true,
          showResetButton: false,
          showSubmitButton: false,
          // resetButtonContent: Text("Clear Form"),
          controls: [
            FormBuilderInput.typeAhead(
              label: 'Country',
              attribute: 'country',
              require: true,
              value: 'Kenya',
              itemBuilder: (context, country) {
                return ListTile(
                  title: Text(country),
                );
              },
              suggestionsCallback: (query) {
                if (query.length != 0) {
                  var lowercaseQuery = query.toLowerCase();
                  return allCountries.where((country) {
                    return country.toLowerCase().contains(lowercaseQuery);
                  }).toList(growable: false)
                    ..sort((a, b) => a
                        .toLowerCase()
                        .indexOf(lowercaseQuery)
                        .compareTo(b.toLowerCase().indexOf(lowercaseQuery)));
                } else {
                  return allCountries;
                }
              },
            ),
            FormBuilderInput.chipsInput(
              label: 'Chips',
              attribute: 'chips_test',
              require: true,
              value: [
                AppProfile('Andrew', 'stock@man.com',
                    'https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX4057996.jpg')
              ],
              suggestionsCallback: (String query) {
                if (query.length != 0) {
                  var lowercaseQuery = query.toLowerCase();
                  return mockResults.where((profile) {
                    return profile.name
                            .toLowerCase()
                            .contains(query.toLowerCase()) ||
                        profile.email
                            .toLowerCase()
                            .contains(query.toLowerCase());
                  }).toList(growable: false)
                    ..sort((a, b) => a.name
                        .toLowerCase()
                        .indexOf(lowercaseQuery)
                        .compareTo(b.name.toLowerCase().indexOf(lowercaseQuery)));
                } else {
                  return const <AppProfile>[];
                }
              },
              chipBuilder: (context, state, profile) {
                return InputChip(
                  key: ObjectKey(profile),
                  label: Text(profile.name),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(profile.imageUrl),
                  ),
                  onDeleted: () => state.deleteChip(profile),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                );
              },
              suggestionBuilder: (context, state, profile) {
                return ListTile(
                  key: ObjectKey(profile),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(profile.imageUrl),
                  ),
                  title: Text(profile.name),
                  subtitle: Text(profile.email),
                  onTap: () => state.selectSuggestion(profile),
                );
              },
            ),
            FormBuilderInput.textField(
              type: FormBuilderInput.TYPE_TEXT,
              attribute: "name",
              label: "Name",
              require: true,
              min: 3,
            ),
            FormBuilderInput.dropdown(
              attribute: "dropdown",
              require: true,
              label: "Dropdown",
              hint: "Select Option",
              options: [
                FormBuilderInputOption(label: "test 1", value: "Option 1"),
                FormBuilderInputOption(label: "test 2", value: "Option 2"),
                FormBuilderInputOption(label: "test 2", value: "Option 3"),
              ],
              controller: FleetDropdownController
            ),
            FormBuilderInput.number(
              attribute: "age",
              label: "Age",
              require: true,
              min: 18,
            ),
            FormBuilderInput.textField(
              type: FormBuilderInput.TYPE_EMAIL,
              attribute: "email",
              label: "Email",
              require: true,
            ),
            FormBuilderInput.textField(
              type: FormBuilderInput.TYPE_URL,
              attribute: "url",
              label: "URL",
              require: true,
            ),
            FormBuilderInput.textField(
                type: FormBuilderInput.TYPE_PHONE,
                attribute: "phone",
                label: "Phone",
                hint: "Including country code (+254)"
                //require: true,
                ),
            FormBuilderInput.password(
              attribute: "password",
              label: "Password",
              //require: true,
            ),
            FormBuilderInput.datePicker(
              label: "Date of Birth",
              attribute: "dob",
            ),
            FormBuilderInput.timePicker(
              label: "Appointment Time",
              attribute: "time",
            ),
            FormBuilderInput.checkboxList(
              label: "The Languages of my people",
              hint: "The Languages of my people",
              attribute: "languages",
              require: false,
              value: ["Dart"],
              options: [
                FormBuilderInputOption(value: "Dart"),
                FormBuilderInputOption(value: "Kotlin"),
                FormBuilderInputOption(value: "Java"),
                FormBuilderInputOption(value: "Swift"),
                FormBuilderInputOption(value: "Objective-C"),
              ],
            ),
            FormBuilderInput.radio(
              label: "My Best Language",
              attribute: "best_language",
              require: true,
              options: ["Dart", "Kotlin", "Java", "Swift", "Objective-C"]
                  .map((lang) => FormBuilderInputOption(value: lang))
                  .toList(growable: false),
            ),
            FormBuilderInput.checkbox(
                label: "I accept the terms and conditions",
                attribute: "accept_terms",
                hint:
                    "Kindly make sure you've read all the terms and conditions",
                validator: (value) {
                  if (!value) return "Accept terms to continue";
                }),
            FormBuilderInput.switchInput(
                label: "I accept the terms and conditions",
                attribute: "accept_terms_switch",
                hint:
                    "Kindly make sure you've read all the terms and conditions",
                validator: (value) {
                  if (!value) return "Accept terms to continue";
                }),
            FormBuilderInput.slider(
              label: "Slider",
              attribute: "slider",
              hint: "Hint",
              min: 0.0,
              require: true,
              max: 100.0,
              value: 10.0,
              divisions: 20,
            ),
            FormBuilderInput.stepper(
              label: "Stepper",
              attribute: "stepper",
              value: 10,
              step: 1,
              hint: "Hint",
            ),
            FormBuilderInput.rate(
              label: "Rate",
              attribute: "rate",
              iconSize: 32.0,
              value: 1,
              max: 5,
              hint: "Hint",
            ),
            FormBuilderInput.segmentedControl(
              label: "Movie Rating (Archer)",
              attribute: "movie_rating",
              require: true,
              options: List.generate(5, (i) => i + 1)
                  .map((number) => FormBuilderInputOption(value: number))
                  .toList(),
            ),
          ],
          onChanged: () {
            print("Form value dirubah");
            print(FleetDropdownController.getValue);
          },
          onSubmit: (formValue) {
            if (formValue != null) {
              print(formValue);
            } else {
              print("Form invalid");
            }
          },
        ),
      ),
    );
  }
}

class AppProfile {
  final String name;
  final String email;
  final String imageUrl;

  const AppProfile(this.name, this.email, this.imageUrl);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppProfile &&
          runtimeType == other.runtimeType &&
          name == other.name;

  @override
  int get hashCode => name.hashCode;

  @override
  String toString() {
    return name;
  }
}
