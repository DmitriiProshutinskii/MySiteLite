import 'package:flutter/material.dart';
import 'package:web_site_lite/components/resume/skils/skill_list.dart';
import 'package:web_site_lite/styles/colors.dart';
import 'package:web_site_lite/styles/texts.dart';

class SkillBlock extends StatelessWidget {
  final SkillBlockParams params;
  const SkillBlock({
    Key? key,
    required this.params,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 340,
          child: MyTextTitle(
            params.title,
            textAlign: TextAlign.end,
          ),
        ),
        const SizedBox(width: 32),
        SizedBox(
          width: 446,
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                MyTextBodyStrong(
                  params.description,
                  color: MyColors.neutral30,
                ),
                const SizedBox(height: 24),
                SkillList(nameSkillMap: params.map),
              ],
            ),
          ),
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}

class SkillBlockParams {
  final String title;
  final String description;
  final Map<String, double> map;

  SkillBlockParams({
    required this.title,
    required this.description,
    required this.map,
  });
}
