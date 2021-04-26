import 'package:flutter/material.dart';
import 'package:flutter_training/home_old.dart';

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
      body: Stack(
        children: [
          Container(
            color: Colors.black.withOpacity(0.2),
          ),
          Image.asset('assets/images/logo.jpg'),
          _body(),
        ],
      ),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                  "https://cdn.iconscout.com/icon/premium/png-256-thumb/account-login-2463560-2090543.png"),
              Container(height: 20),
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
                    Navigator.of(context).pushNamed('/home');
                  } else {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  }
                },
                child: Text("Entrar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
