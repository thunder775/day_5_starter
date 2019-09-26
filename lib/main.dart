import 'package:flutter/material.dart';

void main() => runApp(XyloPhone());



class XyloPhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FlatButton(
              color: Colors.purple.shade300,
              child: Text('Play Sound'),
              onPressed: (){},
            ),
          ),
        ),
      ),
    );
  }
}

