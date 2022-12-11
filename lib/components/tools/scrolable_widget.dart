import 'package:flutter/material.dart';

class ScroillableWidget extends StatelessWidget {
  final Widget child;
  const ScroillableWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SizedBox(
        width: double.maxFinite,
        child: Center(
          child: SizedBox(
            width: 1000,
            child: child,
          ),
        ),
      ),
    );
  }
}
