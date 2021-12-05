import 'package:bonybom_app/source/theme.dart';
import 'package:flutter/material.dart';

class AuthInput extends StatelessWidget {
  const AuthInput({
    Key? key,
    this.s,
    this.isSecure = false,
    required this.hintText,
    this.controller,
  }) : super(key: key);
  final Size? s;
  final bool isSecure;
  final String hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: s!.width,
      padding: EdgeInsets.symmetric(horizontal: ww(context, 32)),
      child: Container(
        height: hh(context, 72),
        child: Stack(
          children: [
            TextField(
              controller: controller,
              obscureText: isSecure,
              style: TextStyle(
                color: Clr.white,
                fontSize: hh(context, 12),
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 26),
                hintText: hintText,
                hintStyle: TextStyle(
                  color: Clr.white.withOpacity(0.75),
                ),
                border: InputBorder.none,
              ),
            ),
            isSecure
                ? Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {},
                      padding: EdgeInsets.only(right: ww(context, 24)),
                      icon: Icon(Icons.remove_red_eye_outlined),
                      color: Clr.white.withOpacity(0.7),
                    ),
                  )
                : Container(),
          ],
        ),
        decoration: BoxDecoration(
          color: Clr.darkestGray.withOpacity(0.7),
          borderRadius: BorderRadius.circular(ww(context, 20)),
        ),
      ),
    );
  }
}
