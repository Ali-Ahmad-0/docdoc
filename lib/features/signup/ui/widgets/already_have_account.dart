import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/themes/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.center,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Already have an account ? ',
              style: AppTextStyles.font12DarkGrey,
            ),
            TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushReplacementNamed(context, Routes.loginScreen);
                },
              text: 'Log in',
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
