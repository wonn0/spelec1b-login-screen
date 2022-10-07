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
        colorScheme: const ColorScheme.light().copyWith(primary: const Color(0xffff7582)),
        scaffoldBackgroundColor: const Color(0xff725a7a),
        //text colors
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: const Color(0xffff7582), 
          displayColor: const Color(0xffff7582),
        ),
        //default fonts
        fontFamily: 'Open Sans',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('asdsad to SP Elec'),
        ),
        body: const LoginForm(),
      )
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  Widget loginItem(String placeholder) {
    return TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: placeholder,
        prefixIcon: Icon(placeholder == 'Username' ? Icons.account_circle_sharp : Icons.key_sharp),
      ),
      obscureText: placeholder == "Password",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png', height: 200, width: 200),
            loginItem('Username'),
            loginItem('Password'),
            OutlinedButton(
              onPressed: () => {}, 
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () => {}, 
              child: const Text('Login'),
            )
          ],
        ),
      )
    );
  }
}