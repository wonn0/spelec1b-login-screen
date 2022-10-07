import 'package:flutter/material.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        //default colors
        primarySwatch: Colors.pink,
        //default fonts
        fontFamily: 'Open Sans',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('asd to SP Elec'),
        ),
        body: const LoginForm(),
      )
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  Widget loginItem(String placeholder) {
    return Text(placeholder);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          loginItem("Login"),
          loginItem("Dont")
        ],
      )
    );
  }
}