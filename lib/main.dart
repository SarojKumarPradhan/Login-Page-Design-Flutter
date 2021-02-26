import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: TextView(),
    );
  }
}

class TextView extends StatefulWidget {
  @override
  _TextViewState createState() => _TextViewState();
}

class _TextViewState extends State<TextView> {
  //*************************************************************
  String user = '';
  var password = '';
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  //*************************************************************
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page Retrieve user Data'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Name',
                hintText: 'Enter Your User Name',
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Enter Your Password',
              ),
            ),
            SizedBox(
              height: 15,
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  user = nameController.text;
                  password = passwordController.text;
                });
              },
              child: Text('Go'),
              color: Colors.orangeAccent,
            ),
            Text(
              '$user\n$password',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
