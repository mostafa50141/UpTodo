import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:uptodo/features/onboarding/data/model/onboarding_model.dart';

class PageViewBody extends StatelessWidget {
  const PageViewBody({
    super.key,
    required this.onboardingModel,
    required this.currentIndex,
  });
  final OnboardingModel onboardingModel;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Gap(50),
            if (onboardingModel.image != null)
              AspectRatio(
                aspectRatio: 1.5,
                child: Image.asset(
                  onboardingModel.image!,
                  height: 300,
                  width: 300,
                ),
              ),
            if (onboardingModel.animation != null)
              AspectRatio(
                aspectRatio: 1.5,
                child: Lottie.asset(
                  onboardingModel.animation!,
                  height: 300,
                  width: 300,
                ),
              ),
            Gap(50),

            Gap(30),
            Text(
              onboardingModel.title,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Gap(30),
            Text(
              textAlign: TextAlign.center,
              onboardingModel.desc,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
