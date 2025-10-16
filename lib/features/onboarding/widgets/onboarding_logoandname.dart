import 'package:docdoc/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingLogoandname extends StatelessWidget {
  const OnboardingLogoandname({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/icons/docdoc_logo.svg', height: 38),
        SizedBox(width: 10),
        Text('Docdoc', style: AppTextStyles.font26BlackBold),
      ],
    );
  }
}
