import 'package:aria_dr/helpers/custom_colors.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final onPress;
  final double padding;

  PrimaryButton(
      {@required this.text, @required this.onPress, @required this.padding});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: this.onPress,
      padding: EdgeInsets.symmetric(horizontal: this.padding),
      color: CustomColors.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(this.padding / 2),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
