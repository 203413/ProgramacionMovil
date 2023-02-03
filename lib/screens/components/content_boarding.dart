import 'package:flutter/material.dart';

class ContentBoarding extends StatelessWidget {
  const ContentBoarding({super.key, this.text, this.image, this.descripcion});
  final String? text;
  final String? image;
  final String? descripcion;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 230.0),
          child: Image.asset(
            image!,
            width: double.infinity,
            height: 250,
          ),
        ),
        Text(
          text!,
          style: const TextStyle(fontSize: 40),
        ),
        Text(
          descripcion!,
          style: const TextStyle(fontSize: 20),
        )
      ],
    );
  }
}
