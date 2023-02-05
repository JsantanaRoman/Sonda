import 'package:flutter/material.dart';
import 'package:sonda/core/constants/styles.dart';

// TODO: Configure Logic to only Highlight one Box at a time
class ProductBox extends StatefulWidget {
  final String priceText;
  final String headingText;
  final String subHeadingText;
  const ProductBox({
    super.key,
    required this.priceText,
    required this.headingText,
    required this.subHeadingText,
  });

  @override
  _ProductBoxState createState() => _ProductBoxState();
}

class _ProductBoxState extends State<ProductBox> {
  bool isClicked = false;

  void _onClick() {
    setState(() {
      isClicked = !isClicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onClick,
      child: Container(
        height: 122,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          gradient: isClicked
              ? const LinearGradient(
                  colors: [
                    primaryColor,
                    colorWhite,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              : const LinearGradient(
                  colors: [
                    colorDarkGrey,
                    colorDarkGrey,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.priceText,
                      style: boxHeadingTextStyle,
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      widget.headingText,
                      style: bodyTextStyle,
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      widget.subHeadingText,
                      style: const TextStyle(
                        fontSize: 16,
                        letterSpacing: -2,
                        color: colorGrey,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
