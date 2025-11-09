import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/themes/styles.dart';
import 'package:docdoc/core/widgets/custom_button.dart';
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
              SizedBox(height: 32),
              OnboardingLogoandname(),
              SizedBox(height: 40),
              ImageAndTextStack(),
              SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Column(
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'Manage and schedule all of your medical appointments easily \nwith Docdoc to get a new experience.',
                      style: AppTextStyles.font13grey400,
                    ),
                    SizedBox(height: 32),
                    CustomButton(
                      widget: Text(
                        'Get Started',
                        style: AppTextStyles.font16whiteSemiBold,
                      ),
                      onTap: () =>
                          Navigator.pushNamed(context, Routes.loginScreen),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
