import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SafeAreaTest extends StatelessWidget {
  const SafeAreaTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 400,
            width: 300,
            color: Colors.blue,
            child: SafeArea(
              child: Text(
                'Anggaplah ini carousel',
              ),
            ),
          )
        ],
      ),
    );
  }
}
