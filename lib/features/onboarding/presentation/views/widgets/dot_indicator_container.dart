import 'package:flutter/material.dart';

class DotIndicatorContainer extends StatelessWidget {
  const DotIndicatorContainer({super.key, required this.isCurrent});
  final bool isCurrent;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isCurrent
            ? Colors.white
            : const Color.fromARGB(150, 158, 158, 158),
        borderRadius: BorderRadius.circular(60),
      ),
      width: 27,
      height: 4,
    );
  }
}
