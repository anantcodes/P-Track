import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController =
      new TextEditingController(); //To store email
  TextEditingController passwordController =
      new TextEditingController(); //To store password

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text("Login page"),
        ),
        body: Center(
          child: Container(
              color: Colors.white,
              child: Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 45.0),
                        TextField(
                          controller: emailController, //email
                          decoration:
                              InputDecoration(labelText: 'Enter your email'),
                        ),
                        SizedBox(height: 25.0),
                        TextField(
                          controller: passwordController, //password
                          decoration:
                              InputDecoration(labelText: 'Enter your password'),
                          obscureText: true, //text hiding
                        ),
                        SizedBox(height: 45.0),
                        FlatButton(
                          color: Colors.blue,
                          onPressed: () {
                            if (emailController.text == 'anant1234@gmail.com' &&
                                passwordController.text ==
                                    'anant') // email and password static
                            {
                              Navigator.pushNamed(
                                  context, '/control'); //push to next route
                              Fluttertoast.showToast(
                                msg: 'Login successfull',
                                textColor: Colors.red,
                                backgroundColor: Colors.grey,
                                gravity: ToastGravity.BOTTOM,
                              );
                            } else {
                              Fluttertoast.showToast(
                                  msg: 'Login unsuccessfull',
                                  textColor: Colors.red,
                                  backgroundColor: Colors.grey,
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM);
                            }
                          },
                          child: Text('Login'),
                        )
                      ]
                  )
              )
          ),
        ),
      ),
    );
  }
}
