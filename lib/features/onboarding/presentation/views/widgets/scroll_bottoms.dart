import 'package:flutter/material.dart';
import 'package:uptodo/core/widgets/custom_btn.dart';
import 'package:uptodo/core/widgets/custom_text_btn.dart';

class ScrollBottoms extends StatelessWidget {
  const ScrollBottoms({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomTextBtn(title: 'Skip', onPressed: () {}),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextBtn(title: 'Back', onPressed: () {}),
                CustomBtn(title: 'Next', onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
