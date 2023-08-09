// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SignInButton extends StatefulWidget {
  final Function()? buttonTap;
  final String buttonText;
  const SignInButton(
      {super.key, required this.buttonTap, required this.buttonText});

  @override
  State<SignInButton> createState() => _SignInButtonState();
}

class _SignInButtonState extends State<SignInButton> {
  @override
  build(BuildContext context) {
    return GestureDetector(
      onTap: widget.buttonTap,
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(8)),
        child: Center(
            child: Text(
          widget.buttonText,
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Lato',
              fontSize: 16,
              fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
