import 'package:flutter/material.dart';
import 'package:massar_app/models/profile_item.dart';
import 'package:massar_app/theme/custom_color.dart';

class ProfileNavTile extends StatelessWidget {
  final ProfileItem profileItem;

  const ProfileNavTile({Key? key, required this.profileItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 10),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: profileItem.onTap,
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
          child: Row(
            children: [
              Image.asset(
                profileItem.image,
                height: 27,
                width: 27,
                fit: BoxFit.fill,
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      profileItem.title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      profileItem.subTitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: CustomColor.labelColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 15),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 14,
                color: CustomColor.labelColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
