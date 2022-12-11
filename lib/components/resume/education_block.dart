import 'package:flutter/material.dart';
import 'package:web_site_lite/styles/colors.dart';
import 'package:web_site_lite/styles/texts.dart';

class EducationBlock extends StatelessWidget {
  final EducationBlockParams params;
  const EducationBlock({
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
                params.university,
                textAlign: TextAlign.end,
              ),
              MyTextRead(params.degree),
              MyTextBodyLight(
                params.department,
                textAlign: TextAlign.end,
              ),
              MyTextBodyLight(params.years, color: MyColors.neutral70),
            ],
          ),
        ),
        const SizedBox(width: 32),
        SizedBox(
          width: 430,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              MyTextBodyStrong(
                params.description,
                color: MyColors.neutral30,
              ),
              const SizedBox(height: 24),
              const MyTextBodyStrong('The topic of the thesis'),
              const SizedBox(height: 12),
              MyTextBodyStrong(params.thesis),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const MyTextBodyStrong('GPA'),
                  MyTextBodyStrong(params.gpa),
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}

class EducationBlockParams {
  final String university;
  final String degree;
  final String department;
  final String years;

  final String description;
  final String thesis;
  final String gpa;
  EducationBlockParams({
    required this.university,
    required this.degree,
    required this.department,
    required this.years,
    required this.description,
    required this.thesis,
    required this.gpa,
  });
}
