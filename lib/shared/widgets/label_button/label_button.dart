import 'package:flutter/material.dart';

import '../../themes/app_text_styles.dart';

class LabelButton extends StatelessWidget {
  final String label;
  final VoidCallback onPress;
  const LabelButton({Key? key, required this.label, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: TextButton(
          onPressed: onPress,
          child: Text(
            label,
            style: TextStyles.buttonHeading,
          )),
    );
  }
}
