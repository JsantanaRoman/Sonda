import 'package:flutter/material.dart';
import 'package:sonda/core/constants/styles.dart';

// ignore: must_be_immutable
class SubscriptionBox extends StatefulWidget {
  SubscriptionBox({
    Key? key,
    required this.subscriptionValue,
    required this.subscriptionLength,
    required this.subscriptionDetails,
    required this.isSelected,
  }) : super(key: key);

  final String subscriptionValue;
  final String subscriptionLength;
  final String subscriptionDetails;
  bool isSelected;

  @override
  State<SubscriptionBox> createState() => _SubscriptionBoxState();
}

class _SubscriptionBoxState extends State<SubscriptionBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.isSelected = !widget.isSelected;
      },
      child: Container(
        width: 113,
        height: 122,
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: widget.isSelected ? primaryColor : colorWhite,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 20, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.subscriptionValue,
                style: widget.isSelected
                    ? subscriptionValueTextStyle
                    : inActiveSubscriptionValueTextStyle,
              ),
              const SizedBox(height: 13),
              Text(widget.subscriptionLength,
                  style: subscriptionLengthTextStyle),
              const SizedBox(height: 4),
              Text(widget.subscriptionDetails,
                  style: subscriptionBoxDetailsTextStyle)
            ],
          ),
        ),
      ),
    );
  }
}
