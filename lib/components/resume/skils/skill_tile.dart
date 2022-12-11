import 'package:flutter/material.dart';
import 'package:web_site_lite/components/resume/skils/skill_line.dart';
import 'package:web_site_lite/styles/texts.dart';

class SkillTile extends StatelessWidget {
  final String name;
  final double skill;
  const SkillTile({
    Key? key,
    required this.name,
    required this.skill,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 80,
          child: MyTextBodyStrong(
            name,
            textAlign: TextAlign.end,
          ),
        ),
        const SizedBox(width: 16),
        SkillLine(skill: skill),
      ],
    );
  }
}
