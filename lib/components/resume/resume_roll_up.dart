import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_site_lite/styles/colors.dart';
import 'package:web_site_lite/styles/texts.dart';

class ResumeRollUp extends StatefulWidget {
  final String title;
  final String text;
  const ResumeRollUp({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);

  @override
  State<ResumeRollUp> createState() => _ResumeRollUpState();
}

class _ResumeRollUpState extends State<ResumeRollUp> {
  static const _duration = Duration(milliseconds: 300);

  double _angle = math.pi / 2;
  bool _visible = false;
  CrossFadeState _state = CrossFadeState.showFirst;
  @override
  void initState() {
    super.initState();
  }

  void onPressed() {
    setState(() {
      _angle = _visible ? -math.pi / 2 : math.pi / 2;
      _visible = !_visible;
      _state = _visible ? CrossFadeState.showSecond : CrossFadeState.showFirst;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: onPressed,
          child: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyTextBodyStrong(widget.title),
                Flex(direction: Axis.horizontal),
                Transform.rotate(
                  angle: _angle,
                  child: const Icon(
                    Icons.chevron_left,
                    color: MyColors.neutral20,
                  ),
                ),
              ],
            ),
          ),
        ),
        AnimatedSize(
          duration: _duration,
          curve: Curves.easeInOutCubic,
          child: SizedBox(
            width: double.maxFinite,
            child: AnimatedCrossFade(
              firstChild: const SizedBox(height: 0),
              sizeCurve: Curves.easeInOutCubic,
              crossFadeState: _state,
              duration: _duration,
              secondChild:
                  MyTextBodyStrong(widget.text, color: MyColors.neutral30),
            ),
          ),
        ),
      ],
    );
  }
}

class ResumeRollUpParams {
  final String title;
  final String text;
  ResumeRollUpParams({
    required this.title,
    required this.text,
  });
}
