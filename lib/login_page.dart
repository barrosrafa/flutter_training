import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  decoration: InputDecoration(
                    labelText: "E-mail",
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                Container(height: 20),
                TextField(
                  onChanged: (text) {
                    password = text;
                  },
                  decoration: InputDecoration(
                    labelText: "Senha",
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                Container(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (email == 't@t.com' && password == '123') {
                      print('correto');
                    }
                  },
                  child: Text("Entrar"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
