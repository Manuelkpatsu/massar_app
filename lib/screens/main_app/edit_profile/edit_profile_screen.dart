import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:massar_app/models/address.dart';
import 'package:massar_app/screens/main_app/widgets/screen_title.dart';
import 'package:massar_app/screens/widgets/custom_button.dart';
import 'package:massar_app/screens/widgets/text_input_field.dart';
import 'package:massar_app/theme/custom_color.dart';

import 'widgets/account_photo.dart';
import 'widgets/address_text.dart';
import 'widgets/address_tile.dart';

class EditProfileScreen extends StatefulWidget {
  static const routeName = '/edit-profile';

  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final List<Address> addresses = [
    const Address(
      id: 1,
      name: 'Domen Tikoro Street: 825 Baker Avenue, Dallas,Texas, Zip code 75202',
    ),
    const Address(
      id: 2,
      name: 'New York City - 1560 Bdwy, Midtown',
    ),
    const Address(
      id: 3,
      name: 'Sunday Street 52, Anlo-Town, Koforidua',
    ),
  ];
  int selectedAddress = 1;
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _countryController = TextEditingController();

  @override
  void initState() {
    _fullNameController.text = 'Didin Sumargodon';
    _emailController.text = 'Sumargodididin@gmail.com';
    _phoneNumberController.text = '+1 452 12435 1241';
    _countryController.text = Country.parse('GH').name;
    super.initState();
  }

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _countryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const ScreenTitleText(title: 'Edit Profile'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 65),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Ink(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 50,
                    bottom: 30,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextInputField(
                          controller: _fullNameController,
                          labelText: 'Full Name',
                          inputAction: TextInputAction.next,
                        ),
                        const SizedBox(height: 10),
                        TextInputField(
                          controller: _emailController,
                          labelText: 'Email Address',
                          inputAction: TextInputAction.next,
                          inputType: TextInputType.emailAddress,
                        ),
                        const SizedBox(height: 10),
                        TextInputField(
                          controller: _phoneNumberController,
                          labelText: 'Phone Number',
                          inputAction: TextInputAction.next,
                          inputType: TextInputType.phone,
                        ),
                        const SizedBox(height: 10),
                        TextInputField(
                          controller: _countryController,
                          labelText: 'Country',
                          inputAction: TextInputAction.done,
                          onChanged: (value) {},
                          readOnly: true,
                          onTap: () {
                            showCountryPicker(
                              context: context,
                              favorite: ['GH'],
                              countryListTheme: CountryListThemeData(
                                bottomSheetHeight:
                                    MediaQuery.of(context).size.height * 0.8,
                                inputDecoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                      width: 0.5,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: CustomColor.labelColor.withOpacity(0.2),
                                  hintText: 'Start typing to search',
                                  hintStyle: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: CustomColor.labelColor,
                                    height: 1.50,
                                  ),
                                ),
                              ),
                              onSelect: (Country country) {
                                setState(() {
                                  _countryController = TextEditingController(
                                    text: country.name,
                                  );
                                });
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const AccountPhoto(),
              ],
            ),
            const SizedBox(height: 20),
            Ink(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AddressText(),
                  const Divider(color: Color(0xffe5eaed), height: 0),
                  ...addresses.map((address) {
                    return AddressTile(
                      address: address,
                      groupValue: selectedAddress,
                      value: address.id,
                      selected: selectedAddress == address.id,
                      onChanged: (value) {
                        setState(() {
                          selectedAddress = value as int;
                        });
                      },
                    );
                  }).toList()
                ],
              ),
            ),
            const SizedBox(height: 30),
            CustomButton(
              onPressed: () {},
              widget: const Text('Save Changes'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
