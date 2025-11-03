import 'package:docdoc/core/themes/styles.dart';
import 'package:flutter/cupertino.dart';

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
              text: 'Don\'t have account? ',
              style: AppTextStyles.font12DarkGrey,
            ),
            TextSpan(
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
