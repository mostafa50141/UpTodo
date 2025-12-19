import 'package:flutter/material.dart';
import 'package:uptodo/features/onboarding/presentation/views/widgets/custom_page_view.dart';
import 'package:uptodo/features/onboarding/presentation/views/widgets/dot_indicator_container.dart';
import 'package:uptodo/features/onboarding/presentation/views/widgets/scroll_bottoms.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: AlignmentGeometry.center,
          children: [
            CustomPageView(),
            ScrollBottoms(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: List.generate(3, (i) {
                return DotIndicatorContainer(isCurrent: true);
              }),
            ),
          ],
        ),
      ),
    );
  }
}
