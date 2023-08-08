import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  void userSignOut() async {
    showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    await FirebaseAuth.instance.signOut();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: userSignOut, icon: Icon(Icons.exit_to_app)),
      ]),
      body: Center(
        child: Text('Logged in as ' + user.email!),
      ),
    );
  }
}
