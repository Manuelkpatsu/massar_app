import 'package:flutter/material.dart';
import 'package:massar_app/models/cart.dart';
import 'package:massar_app/theme/custom_color.dart';
import 'package:massar_app/utils/money.dart';

class SummaryItemTile extends StatelessWidget {
  final Cart cartItem;
  final Widget divider;

  const SummaryItemTile({Key? key, required this.cartItem, required this.divider,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
          child: Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: cartItem.backgroundColor,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Image.asset(
                  cartItem.image,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cartItem.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Money.fromDouble(value: cartItem.price),
                          style: const TextStyle(
                            color: CustomColor.greenBorderColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Quantity: ${cartItem.quantity}',
                          style: const TextStyle(
                            color: Color(0xffbabebf),
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            height: 1.27,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        divider,
      ],
    );
  }
}
