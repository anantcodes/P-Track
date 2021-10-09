import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:p_track/login.dart';

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
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
                child: Padding(
                    padding: const EdgeInsets.only(left: 36.0,right: 36.0,bottom: 40),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Register',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color:Colors.blue),
                              borderRadius: BorderRadius.only(
                                topLeft:Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: TextField(
                                controller: firstNameController, //first name
                                decoration: InputDecoration(labelText: 'Enter your first name',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color:Colors.blue),

                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: TextField(
                                controller: lastNameController, //last name
                                decoration:
                                InputDecoration(labelText: 'Enter your last name',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color:Colors.blue),

                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: TextField(
                                controller: emailController1, //email
                                decoration:
                                InputDecoration(labelText: 'Enter your email',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color:Colors.blue),

                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: TextField(
                                controller: passwordController1, //password
                                decoration: InputDecoration(
                                    labelText: 'Enter a new password',
                                  border: InputBorder.none,
                                ),
                                obscureText: true, //text hiding
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
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: TextField(
                                controller: confirmPasswordController1, //password 2
                                decoration: InputDecoration(
                                    labelText: 'Confirm password',
                                  border: InputBorder.none,

                                ),
                                obscureText: true, //text hiding
                              ),
                            ),
                          ),
                          SizedBox(height: 25.0),
                          Container(
                            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: Colors.blue)),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
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
                            ),
                          ),
                          SizedBox(height: 25),
                          TextButton(
                            style: ButtonStyle(
                                side: MaterialStateProperty.all(
                                    BorderSide(width: 1, color: Colors.blue)),
                                foregroundColor: MaterialStateProperty.all(Colors.blue),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.symmetric(vertical: 10, horizontal: 35)),
                                textStyle:MaterialStateProperty.all(TextStyle(fontSize: 30,)),
                                elevation: MaterialStateProperty.all(10),
                                backgroundColor: MaterialStateProperty.all(Colors.blue),
                                shape:  MaterialStateProperty.all(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7.0),
                                ),)
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
                            child: Text('Register',
                              style: TextStyle(
                                  fontSize: 21,
                                  color: Colors.white
                              ),),
                          ),
                          SizedBox(height: 20.0),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: 'Already have account? ',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                  text: 'Login',
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => Login(),
                                        ),
                                      );
                                    }),
                            ]),
                          ),
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
