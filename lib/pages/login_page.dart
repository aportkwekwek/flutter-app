// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myapp/components/proj_sign_button.dart';
import 'package:myapp/components/proj_square_tile.dart';
import 'package:myapp/components/proj_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void userSignIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Icon(Icons.verified_user, size: 100),

              SizedBox(height: 80),
              Text(
                "Welcome back, you've been missed!",
                style: TextStyle(
                    color: Colors.grey[700], fontSize: 16, fontFamily: 'Lato'),
              ),

              SizedBox(height: 30),
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              SizedBox(height: 10),
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot password?',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontFamily: 'Lato',
                          fontSize: 12),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              SignInButton(
                buttonTap: userSignIn,
              ),

              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Expanded(child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                      )
                    ),
                    Text(
                      'Or continue with',
                      style: TextStyle(color: Colors.grey[700]),
                      ),
                    Expanded(child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                      )
                    ),
                  ],
                ),
              ),

              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: 'assets/images/google_logo.png',),
                  SizedBox(width: 15,),
                  SquareTile(imagePath: 'assets/images/apple_logo.png',)
                ],
              ),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not yet a member?', 
                  style: TextStyle(color: Colors.grey[700], fontFamily: 'Lato'),),
                  SizedBox(width: 5),
                  Text('Register now!',
                  style: TextStyle(color: Colors.blue[500], fontFamily: 'Lato', fontWeight: FontWeight.bold),),
                ],
              )


            ],
          )
        ),
      ),
    );
  }
}
