import 'package:flutter/material.dart';
import 'package:sonda/core/constants/styles.dart';
import 'package:sonda/ui/widgets/settings_modal/change_icon_section.dart';
import 'package:sonda/ui/widgets/settings_modal/subscription_box.dart';

class SubscriptionSection extends StatelessWidget {
  const SubscriptionSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Sonda",
              style: modalheadingTextStyleTwo,
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: primaryColor),
                borderRadius: const BorderRadius.all(
                  Radius.circular(51),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 2, horizontal: 11),
                child: Text(
                  "Plus",
                  style: modalheadingTextStyleTwo,
                  textAlign: TextAlign.start,
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SubscriptionBox(
              subscriptionValue: '\$1',
              subscriptionLength: 'Per Month',
              subscriptionDetails: 'Start Today',
              isSelected: false,
            ),
            SubscriptionBox(
              subscriptionValue: '\$10',
              subscriptionLength: 'Per Year',
              subscriptionDetails: 'Save XX%',
              isSelected: false,
            ),
            SubscriptionBox(
              subscriptionValue: '\$60',
              subscriptionLength: 'Lifetime',
              subscriptionDetails: 'One Time',
              isSelected: false,
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(
                375,
                55,
              ),
              backgroundColor: primaryColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
            child: const Text(
              "Subscribe today",
              style: primaryButtonTextStyle,
            ),
          ),
        ),
        const SizedBox(height: 40),
        const ChangeIconSection()
      ],
    );
  }
}
