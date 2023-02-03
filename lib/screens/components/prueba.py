import 'package:first_app/screens/components/content_boarding.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentePage = 0;
  List<Map<String, String>> listBoarding = [
    {
      "titulo": "ESPARCIMIENTO",
      "imagen": "assets/images/B1.png",
      "descripcion": "brindamos todos los servicios para consentir a tu mascota"
    },
    {
      "titulo": "ADOPCION",
      "imagen": "assets/images/B2.png",
      "descripcion":
          "nulla faucibus tellus ut odio scelerisque, vitae molestie lectus feugiat"
    },
    {
      "titulo": "HOSPITALIDAD",
      "imagen": "assets/images/B3.png",
      "descripcion":
          "nulla faucibus tellus ut odio scelerisque, vitae molestie lectus feugiat"
    },
    {
      "titulo": "VETERINARIA",
      "imagen": "assets/images/B4.png",
      "descripcion":
          "nulla faucibus tellus ut odio scelerisque, vitae molestie lectus feugiat"
    },
    {
      "titulo": "TIENDA",
      "imagen": "assets/images/B5.png",
      "descripcion":
          "Compra todas las necesidades de tu mascota sin salir de casa"
    },
    {
      "titulo": "TIENDA",
      "imagen": "assets/images/B5.png",
      "descripcion":
          "Compra todas las necesidades de tu mascota sin salir de casa"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 700,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentePage = value;
                });
              },
              itemBuilder: (context, index) => ContentBoarding(
                text: listBoarding[index]['titulo'],
                image: listBoarding[index]['imagen'],
                descripcion: listBoarding[index]['descripcion'],
              ),
              itemCount: listBoarding.length,
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Center(
              child: OutlinedButton(
                onPressed: null,
                child: Column(
                  children: [
                    Row(
                      children: List.generate(
                          listBoarding.length,
                          (index) =>
                              pages(index: index, currentePage: currentePage)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}