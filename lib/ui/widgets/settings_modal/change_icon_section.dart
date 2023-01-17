import 'package:flutter/material.dart';
import 'package:sonda/core/constants/styles.dart';

class ChangeIconSection extends StatelessWidget {
  const ChangeIconSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Change Icon",
              style: modalheadingTextStyleThree,
            ),
          ],
        ),
      ],
    );
  }
}
