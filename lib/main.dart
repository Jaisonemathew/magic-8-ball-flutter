import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title:Text('Ask me anything'),
            backgroundColor: Colors.black,
          ),
          body: askmeball(),
        ),
      ),
    );

class askmeball extends StatefulWidget {
  @override
  _askmeballState createState() => _askmeballState();
}

class _askmeballState extends State<askmeball> {
  int ballnumber=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child :TextButton(
          child:Image.asset(
            'images/ball$ballnumber.png'
          ),
          onPressed:()
            {
              setState(() {
                ballnumber = Random().nextInt(4) + 1;
              });
            }
        ),
      ),
    );
  }
}







