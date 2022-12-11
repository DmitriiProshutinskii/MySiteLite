import 'dart:html' as html;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_site_lite/components/resume/education_block.dart';
import 'package:web_site_lite/components/resume/resume_block.dart';
import 'package:web_site_lite/components/resume/resume_title.dart';
import 'package:web_site_lite/components/resume/skill_block.dart';
import 'package:web_site_lite/components/tools/scrolable_widget.dart';
import 'package:web_site_lite/repositories/resume_repository.dart';
import 'package:web_site_lite/styles/colors.dart';
import 'package:web_site_lite/styles/texts.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScroillableWidget(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            SizedBox(height: 60),
            _Quote(),
            SizedBox(height: 48),
            _DownloadResume(),
            SizedBox(height: 48),
            ResumeTitle(text: 'About'),
            _About(),
            ResumeTitle(text: 'Experience'),
            _Experience(),
            SizedBox(height: 48),
            ResumeTitle(text: 'Education'),
            _Education(),
            SizedBox(height: 48),
            ResumeTitle(text: 'Skills'),
            _Skills(),
            SizedBox(height: 48),
            ResumeTitle(text: 'Hobbies'),
            _Hobbies(),
            SizedBox(height: 48),
          ],
        ),
      ),
    );
  }
}

class _Quote extends StatelessWidget {
  const _Quote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: 75),
      child: SizedBox(
        width: 850,
        child: MyTextQuote(
            'All things must be beautiful and comfotable. '
            'You don’t need to think how does it work. You need to focus on the work you do.',
            textAlign: TextAlign.center),
      ),
    );
  }
}

class _DownloadResume extends StatelessWidget {
  const _DownloadResume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () async => download(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Icon(
            CupertinoIcons.doc,
            size: 18,
            color: MyColors.neutral,
          ),
          MyTextBody('Download', decoration: TextDecoration.underline),
        ],
      ),
    );
  }

  void download(BuildContext context) async {
    const String url =
        'https://github.com/DmitriiProshutinskii/DmitriiProshutinskii.github.io/raw/master/Proshutinskii_Flutter_developer.pdf';
    html.AnchorElement anchorElement = html.AnchorElement(href: url);
    anchorElement.download = url;
    anchorElement.click();
    anchorElement.remove();
  }
}

class _Experience extends StatelessWidget {
  const _Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ResumeBlock(
            params: ResumeRepository.experience[index],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 48);
        },
        itemCount: ResumeRepository.experience.length);
  }
}

class _Education extends StatelessWidget {
  const _Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return EducationBlock(
            params: ResumeRepository.education[index],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 48);
        },
        itemCount: ResumeRepository.education.length);
  }
}

class _Skills extends StatelessWidget {
  const _Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return SkillBlock(params: ResumeRepository.skills[index]);
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 48);
        },
        itemCount: ResumeRepository.skills.length);
  }
}

class _Hobbies extends StatelessWidget {
  const _Hobbies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyTextBodyStrong(
        'I love something new.I like to travel, play football, practice sambo. I love media a lot: podcasts, radio, SMM. Filmed video clips as a student, made podcasts and was the head of the student media organization “Phystech.Radio” for 2 years. \n\n'
        'I am fond of cinema, I watched a lot of old films, to which I wrote reviews later.');
  }
}

class _About extends StatelessWidget {
  const _About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 64.0),
      child: MyTextBodyStrong(
        'I am a Flutter developer. At Konstructly LTD. I developed applications for the construction industry in the UK. Before that I was involved in mixed reality for a long time, because of which I am passionate about VR/AR/MR technologies. Previously I was in a student organisation called Phystech.Radio, where I was a supervisor for 2 years. I love the product approach to development. The priority is to create a quality and user-friendly product.',
      ),
    );
  }
}
