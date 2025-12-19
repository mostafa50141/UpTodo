import 'package:flutter/material.dart';
import 'package:uptodo/features/onboarding/data/model/onboarding_model.dart';
import 'package:uptodo/features/onboarding/presentation/views/widgets/page_view_body.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({super.key});

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  List<OnboardingModel> onboardingList = [
    OnboardingModel(
      animation: 'assets/animations/todo.json',
      title: 'Manage your tasks',
      desc: 'You can easily manage all of your daily tasks in DoMe for free',
    ),
    OnboardingModel(
      image: 'assets/images/onboarding_2.png',
      title: 'Create daily routine',
      desc:
          'In Uptodo  you can create your personalized routine to stay productive',
    ),
    OnboardingModel(
      image: 'assets/images/onboarding_3.png',
      title: 'Create daily routine',
      desc:
          'You can organize your daily tasks by adding your tasks into separate categories',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: onboardingList.length,
      itemBuilder: (context, index) => PageViewBody(
        onboardingModel: onboardingList[index],
        currentIndex: index,
      ),
    );
  }
}
