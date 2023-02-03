import 'package:flutter/material.dart';

class Act02 extends StatelessWidget {
  const Act02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 40),
            child: Center(
                child: Text(
              'data',
              style: TextStyle(fontSize: 50),
            )),
          ),
          Column(
            children: const [
              Center(child: Text('Texto 1', style: TextStyle(fontSize: 50))),
              Text('Text 2', style: TextStyle(fontSize: 50)),
              Text('Text 3', style: TextStyle(fontSize: 50))
            ],
          )
        ],
      ),
    );
  }
}
