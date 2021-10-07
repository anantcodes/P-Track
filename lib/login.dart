import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:p_track/control.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController =
      new TextEditingController(); //To store email
  TextEditingController passwordController =
      new TextEditingController(); //To store password

  String _chosenValue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text("Login page"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
                height: MediaQuery.of(context).size.height,
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
                            decoration: InputDecoration(
                                labelText: 'Enter your password'),
                            obscureText: true, //text hiding
                          ),
                          SizedBox(height: 45.0),
                          DropdownButton<String>(
                            focusColor: Colors.white,
                            value: _chosenValue,
                            //elevation: 5,
                            style: TextStyle(color: Colors.white),
                            iconEnabledColor: Colors.black,
                            items: <String>[
                              'Home',
                              'Business',
                              'School',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(color: Colors.black),
                                ),
                              );
                            }).toList(),
                            hint: Text(
                              "Please choose a track",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            onChanged: (String value) {
                              setState(() {
                                _chosenValue = value;
                              });
                            },
                          ),
                          SizedBox(height: 45.0),
                          TextButton(
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.blue,
                              shadowColor: Colors.grey,
                              elevation: 5.0,
                            ),
                            onPressed: () {
                              if (emailController.text ==
                                      'anant1234@gmail.com' &&
                                  passwordController.text ==
                                      'anant') // email and password static
                              {
                                int indexVal = getTabIndexValue();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => Control(indexVal),
                                  ),
                                );
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
                        ]))),
          ),
        ),
      ),
    );
  }

  int getTabIndexValue() {
    if (_chosenValue == "Home") return 0;
    if (_chosenValue == "Business") return 1;
    if (_chosenValue == "School") return 2;
    return 0;
  }
}
