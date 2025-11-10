import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/themes/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.center,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have account? ',
              style: AppTextStyles.font12DarkGrey,
            ),
            TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushReplacementNamed(context, Routes.signupScreen);
                },
              text: ' Sign Up',
              style: AppTextStyles.font13RegBlue.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
