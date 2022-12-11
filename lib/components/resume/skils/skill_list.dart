import 'package:flutter/material.dart';
import 'package:web_site_lite/components/resume/skils/skill_tile.dart';

class SkillList extends StatelessWidget {
  final Map<String, double> nameSkillMap;
  const SkillList({
    Key? key,
    required this.nameSkillMap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return SkillTile(
              name: nameSkillMap.keys.elementAt(index),
              skill: nameSkillMap.values.elementAt(index));
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 16);
        },
        itemCount: nameSkillMap.length);
  }
}
