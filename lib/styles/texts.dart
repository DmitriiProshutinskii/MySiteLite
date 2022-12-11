import 'package:flutter/widgets.dart';
import 'package:web_site_lite/styles/colors.dart';

abstract class _BaseText extends StatelessWidget {
  final String data;
  final double? fontSize;
  final FontWeight? fontWeight;

  final Color? color;
  final TextDecoration? decoration;
  final int? maxLines;
  final double? letterSpacing;
  final TextAlign? textAlign;
  final double? height;
  const _BaseText(
    this.data, {
    Key? key,
    required this.fontSize,
    required this.fontWeight,
    this.textAlign,
    this.color = MyColors.neutral10,
    this.decoration = TextDecoration.none,
    this.maxLines,
    this.letterSpacing,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        decoration: decoration,
        letterSpacing: letterSpacing,
        fontFamily: 'Neue Haas Grotesk',
        height: height != null ? (height! / fontSize!) : null,
      ),
    );
  }
}

class MyTextHero extends _BaseText {
  const MyTextHero(
    String data, {
    Key? key,
    int maxLines = 1,
    Color color = MyColors.neutral10,
    TextAlign? textAlign,
  }) : super(
          data,
          key: key,
          maxLines: maxLines,
          fontSize: 85,
          fontWeight: FontWeight.w900,
          color: color,
          textAlign: textAlign,
          height: 73,
        );
}

class MyTextQuote extends _BaseText {
  const MyTextQuote(
    String data, {
    Key? key,
    Color color = MyColors.neutral10,
    TextAlign? textAlign,
  }) : super(
          data,
          key: key,
          fontSize: 52,
          fontWeight: FontWeight.w200,
          color: color,
          textAlign: textAlign,
        );
}

class MyTextHeroMobile extends _BaseText {
  const MyTextHeroMobile(
    String data, {
    Key? key,
    Color color = MyColors.neutral10,
    TextDecoration decoration = TextDecoration.none,
    int maxLines = 2,
    TextAlign? textAlign,
    TextOverflow overflow = TextOverflow.ellipsis,
  }) : super(
          data,
          key: key,
          textAlign: textAlign,
          fontSize: 32,
          fontWeight: FontWeight.w900,
          color: color,
          decoration: decoration,
          maxLines: maxLines,
        );
}

class MyTextTitle extends _BaseText {
  const MyTextTitle(
    String data, {
    Key? key,
    int maxLines = 1,
    Color color = MyColors.neutral10,
    TextAlign? textAlign,
  }) : super(
          data,
          key: key,
          maxLines: maxLines,
          fontSize: 28,
          fontWeight: FontWeight.w700,
          color: color,
          textAlign: textAlign,
        );
}

class MyTextHournalYear extends _BaseText {
  const MyTextHournalYear(
    String data, {
    Key? key,
    int maxLines = 1,
    Color color = MyColors.neutral10,
    TextAlign? textAlign,
  }) : super(
          data,
          key: key,
          maxLines: maxLines,
          fontSize: 48,
          fontWeight: FontWeight.w700,
          color: color,
          textAlign: textAlign,
        );
}

class MyTextTitleLight extends _BaseText {
  const MyTextTitleLight(
    String data, {
    Key? key,
    int maxLines = 1,
    Color color = MyColors.neutral10,
    TextAlign? textAlign,
  }) : super(
          data,
          key: key,
          maxLines: maxLines,
          fontSize: 28,
          fontWeight: FontWeight.w400,
          color: color,
          textAlign: textAlign,
        );
}

class MyTextQuoteMobile extends _BaseText {
  const MyTextQuoteMobile(
    String data, {
    Key? key,
    Color color = MyColors.neutral10,
    TextDecoration decoration = TextDecoration.none,
    int maxLines = 2,
    TextAlign? textAlign,
  }) : super(
          data,
          key: key,
          textAlign: textAlign,
          fontSize: 24,
          fontWeight: FontWeight.w200,
          color: color,
          decoration: decoration,
          maxLines: maxLines,
        );
}

class MyTextRead extends _BaseText {
  const MyTextRead(
    String data, {
    Key? key,
    Color color = MyColors.neutral10,
    TextDecoration decoration = TextDecoration.none,
    int? maxLines,
    TextAlign? textAlign,
  }) : super(
          data,
          key: key,
          textAlign: textAlign,
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: color,
          decoration: decoration,
        );
}

class MyTextReadStrong extends _BaseText {
  const MyTextReadStrong(
    String data, {
    Key? key,
    Color color = MyColors.neutral10,
    TextDecoration decoration = TextDecoration.none,
    TextAlign? textAlign,
  }) : super(
          data,
          key: key,
          textAlign: textAlign,
          fontSize: 20,
          fontWeight: FontWeight.w900,
          color: color,
          decoration: decoration,
        );
}

class MyTextBody extends _BaseText {
  const MyTextBody(
    String data, {
    Key? key,
    Color color = MyColors.neutral10,
    TextDecoration decoration = TextDecoration.none,
    int maxLines = 2,
    TextAlign? textAlign,
  }) : super(
          data,
          key: key,
          textAlign: textAlign,
          fontSize: 17,
          fontWeight: FontWeight.w500,
          color: color,
          decoration: decoration,
          maxLines: maxLines,
        );
}

class MyTextBodyStrong extends _BaseText {
  const MyTextBodyStrong(
    String data, {
    Key? key,
    Color color = MyColors.neutral10,
    TextDecoration decoration = TextDecoration.none,
    int maxLines = 2,
    TextAlign? textAlign,
  }) : super(
          data,
          key: key,
          textAlign: textAlign,
          fontSize: 17,
          fontWeight: FontWeight.w700,
          color: color,
          decoration: decoration,
          maxLines: maxLines,
        );
}

class MyTextBodyLight extends _BaseText {
  const MyTextBodyLight(
    String data, {
    Key? key,
    Color color = MyColors.neutral10,
    TextDecoration decoration = TextDecoration.none,
    int maxLines = 2,
    TextAlign? textAlign,
  }) : super(
          data,
          key: key,
          textAlign: textAlign,
          fontSize: 17,
          fontWeight: FontWeight.w400,
          color: color,
          decoration: decoration,
          maxLines: maxLines,
        );
}

class MyTextLabel extends _BaseText {
  const MyTextLabel(
    String data, {
    Key? key,
    Color color = MyColors.neutral10,
    TextDecoration decoration = TextDecoration.none,
    int maxLines = 2,
    TextAlign? textAlign,
  }) : super(
          data,
          key: key,
          textAlign: textAlign,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: color,
          decoration: decoration,
          maxLines: maxLines,
        );
}

class MyTextLabelStrong extends _BaseText {
  const MyTextLabelStrong(
    String data, {
    Key? key,
    Color color = MyColors.neutral10,
    TextDecoration decoration = TextDecoration.none,
    int maxLines = 2,
    TextAlign? textAlign,
  }) : super(
          data,
          key: key,
          textAlign: textAlign,
          fontSize: 16,
          fontWeight: FontWeight.w900,
          color: color,
          decoration: decoration,
          maxLines: maxLines,
        );
}

class MyTextCaption extends _BaseText {
  const MyTextCaption(
    String data, {
    Key? key,
    Color color = MyColors.neutral10,
    TextDecoration decoration = TextDecoration.none,
    TextAlign? textAlign,
  }) : super(data,
            key: key,
            textAlign: textAlign,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: color,
            decoration: decoration,
            letterSpacing: 0.5);
}

class MyTextCaptionStrong extends _BaseText {
  const MyTextCaptionStrong(
    String data, {
    Key? key,
    Color color = MyColors.neutral10,
    TextDecoration decoration = TextDecoration.none,
    int maxLines = 2,
    TextAlign? textAlign,
  }) : super(
          data,
          key: key,
          textAlign: textAlign,
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: color,
          decoration: decoration,
          maxLines: maxLines,
        );
}
