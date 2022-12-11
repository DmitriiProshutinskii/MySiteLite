import 'package:flutter/material.dart';
import 'package:web_site_lite/styles/colors.dart';

class SkillLine extends StatelessWidget {
  final double skill;
  const SkillLine({
    Key? key,
    required this.skill,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 6,
          child: Stack(
            children: [
              Container(
                width: 50 * 7,
                color: MyColors.gray,
              ),
              Container(
                width: 50 * skill,
                color: MyColors.neutral10,
              )
            ],
          ),
        ),
      ],
    );
  }
}
