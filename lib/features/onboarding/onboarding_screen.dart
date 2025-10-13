import 'package:docdoc/features/onboarding/widgets/image_and_text_stack.dart';
import 'package:docdoc/features/onboarding/widgets/onboarding_logoandname.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              OnboardingLogoandname(),
              SizedBox(height: 40),
              ImageAndTextStack(),
            ],
          ),
        ),
      ),
    );
  }
}
