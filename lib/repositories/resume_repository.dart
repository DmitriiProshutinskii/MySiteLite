import 'package:web_site_lite/components/resume/education_block.dart';
import 'package:web_site_lite/components/resume/resume_block.dart';
import 'package:web_site_lite/components/resume/skill_block.dart';

class ResumeRepository {
  static List<ResumeBlockParams> get experience => [
        ResumeBlockParams(
            company: 'Konstructly LTD.',
            jobTitle: 'Flutter developer',
            dates: 'February 2022 - December 2022',
            description:
                'Development of an application for the construction industry in which the relationship between workers, foremen, accountants is optimised. The application solves the pain of inconsistent reporting and dealing with the result of the workers.',
            keySkills:
                'Flutter, Dart, Dart DevTool, GetX, Provider, REST API, Linear, Jira, Figma, GitHub, Dio',
            competites:
                'Most of the application was done in collaboration with another developer. My duties included: full page layout with animations, page logic (using Provider and GetX), network layer (Dio + interceptors), error handling and data uploading, form data validation, CI/CD setup, basic engineering analytics with Amplitude, error analytics with Sentry.\n'
                'Also, the work included identifying requirements for backend logic based on the design. The work was based on Backend For Frontend (BFF) paradigm'),
        ResumeBlockParams(
          company: 'Konstructly LTD.',
          jobTitle: 'Kotlin Backend developer',
          dates: 'October 2022 – December 2022',
          description:
              'Development of an application for the construction industry in which the relationship between workers, foremen, accountants is optimised. The application solves the pain of inconsistent reporting and dealing with the result of the workers.',
          keySkills: 'Kotlin, Jersey, IntelliJ IDEA, REST, Google API',
          competites:
              'I got involved in writing the backend part of the application. Writing endpoints, creating business DTO models, writing tests, creating JWT Token for authorization, Google / GitHub authorization, bug fixes',
        ),
        ResumeBlockParams(
          company: 'No Finish Line LTD.',
          jobTitle: 'Flutter developer',
          dates: 'August 2021 – April 2022',
          description:
              'A British start-up developing an alternative running app, PAWEN, with a cholestic approach. The app was mainly written for iOS',
          keySkills:
              'Flutter, Dart, Dart DevTool, Provider, DI, Get_it, Firebase, Markdown Packages, TestFlight, GitHub',
          competites:
              'My responsibilities included: full page layout with animations (pixel perfect approach) and transitions (used Provider and DI). Standardizing app writing style, fixing bugs, deciding on architecture and app development in general, push notifications, building questionnaire architecture',
        ),
        ResumeBlockParams(
          company: 'RAMAX GROUP',
          jobTitle: 'Junior iOS developer',
          dates: 'May 2021 – January 2022',
          description:
              'I developed the Aeroflot application on RxSwift. Worked with MVVC architecture, fixed bugs, wrote new functionality, such as selecting a date range in the calendar. Worked on RusAgroTrans application in Flutter.\n Used corporate tools Bitrix24, Jira, GitLab, Confluence. Solved the tasks quickly and with high quality.',
          keySkills:
              'Swift, UIKit, RxSwift, Xcode, Git, GitLab, Jira, Confluence, Slack, AppStore Developers',
          competites: 'I implemented the tasks set in Jira',
        ),
        ResumeBlockParams(
          company: 'Strata Solutions',
          jobTitle: 'Software engineer',
          dates: 'July 2020 – May 2021',
          description:
              'Project manager and developer of mixed reality applications for Microsoft HoloLens 2 glasses since 2020.\n'
              'Developed, tested and designed a mixed reality application visualising an oil and gas field.\n'
              'Procured these glasses, conducted market research on the position of the mixed reality technology in Russia and registered the results of intellectual activity (product registration numbers: RU 2020661076 and RU 2020614899)\n'
              'I Developed the Intern task and supervised the intern to get the results.',
          keySkills: 'C#, Unity, MRTK 2.0, MySQL, Python, Blender',
          competites:
              'R&D, market research, procurement, tasking, architecture development, client-server interactions',
        ),
        ResumeBlockParams(
          company: 'Strata Solutions',
          jobTitle: 'Junior engineer ',
          dates: 'August 2018 – July 2020',
          description:
              'Developed a mixed reality application for Microsoft HoloLens glasses from scratch. Created basic UI/UX, wrote, developed and rewrote the application architecture three times, and optimised Unity. Developed a simple TCP client-server application. Worked with Photon Unity Network.\n'
              'Tested hypotheses of implementing this technology in Russian oil and gas companies. Wrote numerous reports and made many report presentations',
          keySkills: 'C#, Unity, MRTK 2.0, Power Point',
          competites:
              'Independently researched the market, developed application architecture, set objectives, delivered project reports',
        ),
        ResumeBlockParams(
          company: 'Computational Materials Discovery Laboratory',
          jobTitle: 'Junior engineer',
          dates: 'November 2017 – August 2018',
          description:
              'I studied relaxation of polymer structures using SiO2 as an example. In Python, I wrote an algorithm for predicting polymer polyhedral structures for the USPEX program developed by Artyom Oganov`s lab. Relaxation of structures was done using VASP',
          keySkills: 'Phyton, USPEX, VASP, BASH',
          competites: 'I Implemented the tasks assigned',
        ),
      ];

  static List<EducationBlockParams> get education => [
        EducationBlockParams(
            university: 'Moscow Institute of Physics and Technology',
            degree: 'Master`s degree',
            department:
                'Phystech School of Radio Engineering and Computer Technology',
            years: '2018 - 2020',
            description:
                'A great emphasis at the Department of Science Engineering was placed on the subjects needed in the future for a specialist in the oil and gas field. Example of courses: statistics, machine learning, introduction to the oil and gas field, geology, hydrodynamics.',
            thesis:
                'Optimization of the borehole geometry taking into account the geomechanical model of borehole stability',
            gpa: '4.7 / 5'),
        EducationBlockParams(
          university: 'Moscow Institute of Physics and Technology',
          degree: 'Bachelor`s degree',
          department: 'Department of Molecular and Chemical Physics',
          years: '2014 - 2018',
          description:
              'The main subjects studied are mathematical analysis, algebra and analytical geometry, general and theoretical physics, probability theory, chemical physics, programming, English. In the 3rd year, I replaced the chemical physics course with courses in C++ and Python.',
          thesis:
              'Creation of an algorithm for predicting polymer polyhedral structures',
          gpa: '4.4 / 5',
        ),
      ];

  static List<SkillBlockParams> get skills => [
        SkillBlockParams(
            title: 'Programming languages',
            description:
                'Programming languages in which I wrote or write. The scales reflect the subjective feeling of knowledge of the language relative to other instruments and languages.',
            map: {
              'Dart': 6,
              'Swift': 3,
              'C#': 4,
              'Python': 2,
              'C++': 1,
              'SQL': 1
            }),
        SkillBlockParams(
            title: 'Frameworks & Packages',
            description:
                'Frameworks and packages that I have used, use or have deep dived into and figured out how they work. Some of them I use now, some I used a long time ago.',
            map: {
              'Flutter': 6,
              'SwiftUI': 3,
              'Firebase': 4,
              'Unity, MRTK': 4,
              'numpy, sklearn': 1,
            }),
        SkillBlockParams(
            title: 'Everyday tools',
            description:
                'IDE, code editors, git. Those tools that are used constantly.',
            map: {
              'Git, GitHub': 6,
              'VS Code': 5,
              'VS Studio': 2,
              'XCode': 4,
              'Linear, Jira': 4,
              'Figma, Illustrator': 6,
            }),
        SkillBlockParams(
            title: 'Additional tools',
            description:
                'Skills acquired by me during my student days or as a hobby.',
            map: {
              'After Effects': 7,
              'Premier Pro': 6,
              'Notion': 4,
              'MS Word, MS Power Point': 4,
            }),
      ];
}
