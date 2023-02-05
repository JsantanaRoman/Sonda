import 'package:flutter/material.dart';
import 'package:sonda/core/constants/styles.dart';

class ListItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;

  const ListItem({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: colorDarkGrey,
            width: 1.0,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: iconGrey,
            ),
            const SizedBox(width: 16.0),
            Text(
              text,
              style: const TextStyle(fontSize: 17, color: colorLightGrey),
            ),
          ],
        ),
      ),
    );
  }
}
