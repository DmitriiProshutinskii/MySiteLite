import 'package:flutter/material.dart';
import 'package:web_site_lite/components/resume/resume_roll_up.dart';
import 'package:web_site_lite/styles/colors.dart';
import 'package:web_site_lite/styles/texts.dart';

class ResumeBlock extends StatelessWidget {
  final ResumeBlockParams params;
  const ResumeBlock({
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MyTextTitle(
                params.company,
                textAlign: TextAlign.end,
              ),
              MyTextBodyLight(params.jobTitle),
              MyTextBodyLight(params.dates, color: MyColors.neutral70),
            ],
          ),
        ),
        const SizedBox(width: 32),
        SizedBox(
          width: 430,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              MyTextBodyStrong(
                params.description,
                color: MyColors.neutral30,
              ),
              const SizedBox(width: 24),
              ResumeRollUp(
                title: 'Key skills and tools',
                text: params.keySkills,
              ),
              const SizedBox(width: 24),
              ResumeRollUp(title: 'Competencies', text: params.competites),
            ],
          ),
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}

class ResumeBlockParams {
  final String company;
  final String jobTitle;
  final String dates;

  final String description;
  final String keySkills;
  final String competites;

  ResumeBlockParams({
    required this.company,
    required this.jobTitle,
    required this.dates,
    required this.description,
    required this.keySkills,
    required this.competites,
  });
}
