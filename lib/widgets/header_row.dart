import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';

class HeaderRow extends StatelessWidget {
  final String largeText;
  final String smallText;
  const HeaderRow(
      {super.key, required this.largeText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(largeText, style: Styles.headlineStyle2),
        InkWell(
          onTap: () {},
          child: Text(smallText,
              style: Styles.textStyle.copyWith(color: Styles.primaryColor)),
        )
      ],
    );
  }
}
