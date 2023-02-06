import 'package:flutter/material.dart';
import 'package:massar_app/models/cart.dart';
import 'package:massar_app/screens/widgets/product_quantity_text.dart';
import 'package:massar_app/screens/widgets/rounded_icon_button.dart';
import 'package:massar_app/theme/custom_color.dart';
import 'package:massar_app/utils/money.dart';

class CartTile extends StatelessWidget {
  final bool isSelected;
  final Cart cart;
  final VoidCallback onSelected;

  const CartTile({
    Key? key,
    required this.isSelected,
    required this.cart,
    required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: onSelected,
        borderRadius: BorderRadius.circular(10),
        child: Ink(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              isSelected
                  ? Container(
                      height: 18,
                      width: 18,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: CustomColor.greenColor,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 12,
                      ),
                    )
                  : Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: CustomColor.greyColor, width: 0.5),
                      ),
                    ),
              const SizedBox(width: 13),
              Ink(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  color: cart.backgroundColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  cart.image,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cart.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      Money.fromDouble(value: cart.price),
                      style: const TextStyle(
                        color: CustomColor.greenBorderColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            RoundedIconButton(
                              icon: Icons.remove,
                              onTap: () {},
                              inkWellShapeBorder: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              shapeBorder: RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: CustomColor.greyColor,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            const SizedBox(width: 13),
                            ProductQuantityText(quantity: cart.quantity),
                            const SizedBox(width: 13),
                            RoundedIconButton(
                              icon: Icons.add,
                              onTap: () {},
                              inkWellShapeBorder: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              shapeBorder: RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: CustomColor.greyColor,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          splashRadius: 20,
                          onPressed: () {},
                          icon: const Icon(
                            Icons.delete_outline_rounded,
                            size: 20,
                            color: CustomColor.descriptionColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
