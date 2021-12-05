import 'package:bonybom_app/source/theme.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    Key? key,
    this.s,
    required this.bgColor,
    required this.child,
    this.onPressed,
  }) : super(key: key);

  final Size? s;
  final Color bgColor;
  final Widget child;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: s!.width,
      padding: EdgeInsets.symmetric(horizontal: ww(context, 32)),
      child: Material(
        color: bgColor,
        borderRadius: BorderRadius.circular(
          ww(context, 25),
        ),
        child: MaterialButton(
          onPressed: onPressed,
          height: hh(context, 72),
          color: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              ww(context, 25),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
