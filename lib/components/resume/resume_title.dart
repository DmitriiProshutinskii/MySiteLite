import 'package:flutter/material.dart';
import 'package:web_site_lite/styles/colors.dart';
import 'package:web_site_lite/styles/texts.dart';

class ResumeTitle extends StatelessWidget {
  final String text;
  const ResumeTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyTextHero(text),
          const SizedBox(height: 16),
          Container(
            width: double.maxFinite,
            height: 4,
            color: MyColors.neutral,
          )
        ],
      ),
    );
  }
}
