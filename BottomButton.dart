import 'constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.buttonTitle, required this.onTap, required this.coloring, required this.textColor});

  final void Function() onTap;
  final String buttonTitle;
  final Color coloring;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
              fontSize: 12.0,
              color: textColor,
            ),
          ),
        ),
        color: coloring,
        margin: EdgeInsets.only(top:10),
        padding: EdgeInsets.only(bottom: 30),
        width: 40.0,
        height: 20.0,
      ),
    );
  }
}