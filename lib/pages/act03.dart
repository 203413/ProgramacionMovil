import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Act03 extends StatelessWidget {
  const Act03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: const [
              Text('data', style: TextStyle(fontSize: 50)),
              Padding(
                padding: EdgeInsets.only(left: 180),
                child: Text('data2', style: TextStyle(fontSize: 50)),
              )
            ],
          ),
          Column()
        ],
      ),
    );
  }
}
