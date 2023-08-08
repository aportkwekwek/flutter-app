// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  final Function()? buttonTap;
  const SignInButton({
    super.key,
    required this.buttonTap,
  });



  @override
  build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTap,
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8)
          ),
        child: Center(
          child: Text(
            'Sign In',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Lato',
              fontSize: 16,
              fontWeight: FontWeight.bold
              ),
          ) 
        ),
      ),
    );
  }
}
