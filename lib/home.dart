import 'package:flutter/material.dart';
import 'package:flutter_training/app_controller.dart';
import 'package:flutter_training/switch_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                    "https://media-exp1.licdn.com/dms/image/C4D03AQHhzonVPmrkow/profile-displayphoto-shrink_800_800/0/1612361529978?e=1625097600&v=beta&t=mjnF-EARrM-7HJo4YG_HOf7vphgiDhYRSThJhU1JS0U"),
              ),
              accountName: Text("Rafael"),
              accountEmail: Text("t@t.com"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("inicio"),
              subtitle: Text("tela de inicio"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("sair"),
              subtitle: Text("sair da tela"),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [CustomSwitch()],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.black,
              child: Center(
                  child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
              )),
            ),
            Text('Contador: ${AppController.instance.counter}'),
            CustomSwitch(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.black,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.black,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.amber,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.amber,
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () {
          AppController.instance.changeCount();
        },
      ),
    );
  }
}
