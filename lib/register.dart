import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'control.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  TextEditingController firstNameController = new TextEditingController(); // To store first name
  TextEditingController lastNameController = new TextEditingController(); //To store last name
  TextEditingController emailController1 = new TextEditingController(); //To store email
  TextEditingController passwordController1 = new TextEditingController(); //To store pass
  TextEditingController confirmPasswordController1 = new TextEditingController();// To store pass 2
  String chosenValue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Registration page'),
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
                            controller: firstNameController, //first name
                            decoration:
                            InputDecoration(labelText: 'Enter your first name'),
                          ),
                          SizedBox(height: 25.0),
                          TextField(
                            controller: lastNameController, //last name
                            decoration:
                            InputDecoration(labelText: 'Enter your last name'),
                          ),
                          SizedBox(height: 25.0),
                          TextField(
                            controller: emailController1, //email
                            decoration:
                            InputDecoration(labelText: 'Enter your email'),
                          ),
                          SizedBox(height: 25.0),
                          TextField(
                            controller: passwordController1, //password
                            decoration: InputDecoration(
                                labelText: 'Enter a new password'),
                            obscureText: true, //text hiding
                          ),
                          SizedBox(height: 25.0),
                          TextField(
                            controller: confirmPasswordController1, //password 2
                            decoration: InputDecoration(
                                labelText: 'Confirm password'),
                            obscureText: true, //text hiding
                          ),
                          SizedBox(height: 45.0),
                          DropdownButton<String>(
                            focusColor: Colors.white,
                            value: chosenValue,
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
                                chosenValue = value;
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
                              if (passwordController1.text == confirmPasswordController1.text)
                                  {
                                    print('Correct logic');
                                int indexVal = getTabIndexValue();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => Control(indexVal),
                                  ),
                                );
                                Fluttertoast.showToast(
                                  msg: 'Registration successfull',
                                  textColor: Colors.red,
                                  backgroundColor: Colors.grey,
                                  gravity: ToastGravity.BOTTOM,
                                );
                              } else {
                                Fluttertoast.showToast(
                                    msg: 'Registration unsuccessfull',
                                    textColor: Colors.red,
                                    backgroundColor: Colors.grey,
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM);
                              }
                            },
                            child: Text('Register'),
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
    if (chosenValue == "Home") return 0;
    if (chosenValue == "Business") return 1;
    if (chosenValue == "School") return 2;
    return 0;
  }
}
