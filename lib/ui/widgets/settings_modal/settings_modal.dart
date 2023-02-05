import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sonda/core/constants/styles.dart';
import 'package:sonda/ui/widgets/list_item.dart';
import 'package:sonda/ui/widgets/settings_modal/product_box.dart';

class SettingsModal extends StatelessWidget {
  const SettingsModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.83,
        color: globalBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Settings",
                        style: headingTextStyle,
                        textAlign: TextAlign.start,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset(
                            "assets/images/modal_close_icon.svg"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 17.0),
                  child: Row(
                    children: [
                      Text(
                        "Sonda",
                        style: headingTextStyleTwo,
                      ),
                      const SizedBox(width: 2),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 4.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: primaryColor,
                            width: 2.0,
                          ),
                        ),
                        child: Text(
                          "Plus",
                          style: headingTextStyleTwo,
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: const [
                    Expanded(
                      child: ProductBox(
                        priceText: '\$13',
                        headingText: 'Per Year',
                        subHeadingText: 'Supporter',
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: ProductBox(
                        priceText: '\$45',
                        headingText: 'Lifetime',
                        subHeadingText: 'Beliver',
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 16.0),
                            child: Text(
                              'Pay Yearly', // TODO: Change Text Based on Product Box Selection
                              style: TextStyle(
                                color: colorBlack,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
                const ListItem(
                  icon: Icons.monetization_on_outlined,
                  text: "Restore Purchases",
                ),
                const ListItem(
                  icon: Icons.app_shortcut_outlined,
                  text: "See features",
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Row(
                    children: [
                      Text(
                        "Change Icon",
                        style: headingTextStyleTwo,
                      ),
                    ],
                  ),
                ),
                // TODO: Add Change Icon Session
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    children: [
                      Text(
                        "Information",
                        style: headingTextStyleTwo,
                      ),
                    ],
                  ),
                ),
                const ListItem(
                  icon: Icons.monetization_on_outlined,
                  text: "Contact",
                ),
                const ListItem(
                  icon: Icons.app_shortcut_outlined,
                  text: "Send Feedback",
                ),
                const ListItem(
                  icon: Icons.monetization_on_outlined,
                  text: "Privacy Policy",
                ),
                const ListItem(
                  icon: Icons.app_shortcut_outlined,
                  text: "Terms and Conditions",
                ),
                const ListItem(
                  icon: Icons.monetization_on_outlined,
                  text: "About Sonda",
                ),
                const ListItem(
                  icon: Icons.app_shortcut_outlined,
                  text: "Do you love us",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
