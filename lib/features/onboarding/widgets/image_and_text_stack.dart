import 'package:docdoc/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageAndTextStack extends StatelessWidget {
  const ImageAndTextStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/icons/low_opacity2.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withAlpha(0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.14, 0.3],
            ),
          ),
          child: Image.asset('assets/images/onboarding_doctor.png'),
        ),
        Positioned(
          bottom: 20,
          //top: 0,
          left: 0,
          right: 0,
          child: Text(
            textAlign: TextAlign.center,
            'Best Doctor \n Appointment App',
            style: AppTextStyles.font32BlueBold.copyWith(height: 1.4),
          ),
        ),
      ],
    );
  }
}
