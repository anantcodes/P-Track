import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30,left: 10,right: 10),
      child: Stack(
        children:[ ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 5,bottom: 5),
              child: Container(
                color: Colors.blue,
                height: 60,
                child: Center(
                  child: Text('February'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,bottom: 5),
              child: Container(
                color: Colors.blue,
                height: 60,
                child: Center(
                  child: Text('March'),
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.only(top: 5,bottom: 5),
              child: Container(
                color: Colors.blue,
                height: 60,
                child: Center(
                  child: Text('April'),
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.only(top: 5,bottom: 5),
              child: Container(
                color: Colors.blue,
                height: 60,
                child: Center(
                  child: Text('May'),
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.only(top: 5,bottom: 5),
              child: Container(
                color: Colors.blue,
                height: 60,
                child: Center(
                  child: Text('June'),
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.only(top: 5,bottom: 5),
              child: Container(
                color: Colors.blue,
                height: 60,
                child: Center(
                  child: Text('July'),
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.only(top: 5,bottom: 5),
              child: Container(
                color: Colors.blue,
                height: 60,
                child: Center(
                  child: Text('August'),
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.only(top: 5,bottom: 5),
              child: Container(
                color: Colors.blue,
                height: 60,
                child: Center(
                  child: Text('September'),
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.only(top: 5,bottom: 5),
              child: Container(
                color: Colors.blue,
                height: 60,
                child: Center(
                  child: Text('October'),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 5,bottom: 5),
              child: Container(
                color: Colors.blue,
                height: 60,
                child: Center(
                  child: Text('November'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,bottom: 5),
              child: Container(
                color: Colors.blue,
                height: 60,
                child: Center(
                  child: Text('December'),
                ),
              ),
            ),
          ],
        ),
    ]
      ),

    );
  }
}
