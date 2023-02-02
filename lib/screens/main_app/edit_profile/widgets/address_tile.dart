import 'package:flutter/material.dart';
import 'package:massar_app/models/address.dart';
import 'package:massar_app/theme/custom_color.dart';

class AddressTile extends StatelessWidget {
  final Address address;
  final Object value;
  final Object? groupValue;
  final void Function(Object?)? onChanged;
  final bool selected;

  const AddressTile({
    Key? key,
    required this.address,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Theme(
          data: Theme.of(context).copyWith(
            unselectedWidgetColor: CustomColor.radioColor,
          ),
          child: RadioListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            activeColor: CustomColor.greenColor,
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
            selected: selected,
            controlAffinity: ListTileControlAffinity.trailing,
            dense: true,
            title: Text(
              address.name,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                height: 1.5,
                color: Colors.black,
              ),
            ),
          ),
        ),
        const Divider(color: Color(0xffe5eaed), height: 0),
      ],
    );
  }
}
