import 'package:flutter/material.dart';

class AddressPicker extends StatelessWidget {
  final VoidCallback onTap;
  final String address;

  const AddressPicker({
    Key? key,
    required this.onTap,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          const Icon(
            Icons.location_on_outlined,
            color: Colors.white,
            size: 17,
          ),
          const SizedBox(width: 15),
          Text(
            address,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              height: 1.54,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 12),
          const Icon(
            Icons.arrow_drop_down,
            color: Colors.white,
            size: 20,
          ),
        ],
      ),
    );
  }
}
