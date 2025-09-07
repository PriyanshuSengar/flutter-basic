import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;
  const RoundedButton({
    super.key,
    required this.btnName,
    this.icon,
    this.bgColor = Colors.red,
    this.textStyle,
    this.callback,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!();
      },
      child:
          icon != null
              ? Row(children: [icon!, Text(btnName, style: textStyle)])
              : Text(btnName, style: textStyle),
      style: ElevatedButton.styleFrom(
        shadowColor: Colors.black,
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    );
  }
}
