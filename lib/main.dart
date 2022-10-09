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
        //button
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
            shape: const StadiumBorder(),
          )
        ),
      ),
      home: const Scaffold(
        body: LoginForm(),
      )
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  Widget loginItem(String placeholder) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        filled: true,
        fillColor: Colors.white,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelText: placeholder,
        prefixIcon: Icon(placeholder == 'Username' ? Icons.account_circle_sharp : Icons.key_sharp),
      ),
      obscureText: placeholder == "Password",
    );
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/background.jpg'),
          ),
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Image.asset('assets/images/logo.png', height: 200, width: 200),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: loginItem('Username'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: loginItem('Password'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: ElevatedButton(
                    onPressed: () => {}, 
                    child: const Text('Login'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => {}, 
                  child: const Text('Sign Up'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}