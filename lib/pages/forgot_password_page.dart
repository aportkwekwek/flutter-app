// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../components/proj_sign_button.dart';
import '../components/proj_textfield.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  Future resetPassword() async {
    if (emailController.text != "") {
      try {
        await FirebaseAuth.instance
            .sendPasswordResetEmail(email: emailController.text);
        dialogMessage("Email sent to user");
        emailController.text = "";
      } on FirebaseAuthException catch (e) {
        dialogMessage(e.message.toString());
      }
    } else {
      dialogMessage("Email should not be blank!");
    }
  }

  void dialogMessage(String alertMessage) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              alertMessage,
              style: TextStyle(fontFamily: 'Lato', fontSize: 14),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black26,
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Enter your email to send link resetting your password!'),
            SizedBox(height: 10.0),
            MyTextField(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
            ),
            SizedBox(height: 10.0),
            SignInButton(
              buttonTap: resetPassword,
              buttonText: 'Reset Password',
            ),
          ],
        )
      );
  }
}
