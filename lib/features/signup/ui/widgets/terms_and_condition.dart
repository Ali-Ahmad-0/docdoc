import 'package:docdoc/core/themes/styles.dart';
import 'package:flutter/cupertino.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, hyou agree to our ',
            style: AppTextStyles.font12GreyRegular,
          ),
          TextSpan(
            text: 'Terms & Conditions ',
            style: AppTextStyles.font12DarkGrey,
          ),
          TextSpan(text: 'and ', style: AppTextStyles.font12GreyRegular),
          TextSpan(
            text: 'PrivacyPolicy.',
            style: AppTextStyles.font12DarkGrey.copyWith(height: 2),
          ),
        ],
      ),
    );
  }
}
