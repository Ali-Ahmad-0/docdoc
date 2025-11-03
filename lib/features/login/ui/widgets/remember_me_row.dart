import 'package:docdoc/core/themes/colors.dart';
import 'package:docdoc/core/themes/styles.dart' show AppTextStyles;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RememberMeRow extends StatefulWidget {
  const RememberMeRow({super.key});

  @override
  _RememberMeRowState createState() => _RememberMeRowState();
}

class _RememberMeRowState extends State<RememberMeRow> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Checkbox(
            activeColor: ColorsManager.mainColorBlue,
            value: isChecked,
            side: BorderSide(color: ColorsManager.grey400, width: 2),
            onChanged: (bool? value) {
              setState(() {
                isChecked = value ?? false;
              });
            },
          ),
          Text('Remember me'),
          Spacer(),
          Text('Forgot Password', style: AppTextStyles.font13RegBlue),
        ],
      ),
    );
  }
}
