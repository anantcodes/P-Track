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
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color:Colors.blue),
                              borderRadius: BorderRadius.only(
                                topLeft:Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            child: TextField(
                              controller: emailController, //email
                              decoration:
                                  InputDecoration(labelText: 'Enter your email',
                                  border: InputBorder.none,
                                    prefixIcon: Icon(Icons.email),
                                  ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color:Colors.blue),
                                borderRadius: BorderRadius.only(
                                  bottomLeft:Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),

                          ),
                            child: TextField(
                              controller: passwordController, //password
                              decoration: InputDecoration(
                                  labelText: 'Enter your password',
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.password_outlined),

                              ),
                              obscureText: true, //text hiding
                            ),
                          ),
                          SizedBox(height: 35.0),
                          Container(
                            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: Colors.blue)),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                focusColor: Colors.white,
                                value: _chosenValue,
                                elevation: 15,
                                style: TextStyle(color: Colors.white),
                                iconEnabledColor: Colors.blue,
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
                            ),
                          ),
                          SizedBox(height: 35.0),
                          TextButton(
                            style: ButtonStyle(
                                side: MaterialStateProperty.all(
                                    BorderSide(width: 1, color: Colors.blue)),
                                foregroundColor: MaterialStateProperty.all(Colors.blue),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.symmetric(vertical: 10, horizontal: 50)),
                                textStyle:MaterialStateProperty.all(TextStyle(fontSize: 30,)),
                              elevation: MaterialStateProperty.all(10),
                              backgroundColor: MaterialStateProperty.all(Colors.blue),
                              shape:  MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7.0),
                              ),)
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
                            child: Text('Login',
                            style: TextStyle(
                              fontSize: 21,
                                color: Colors.white
                            ),
                            ),
                          )
                        ]
                    )
                )
            ),
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
