import 'package:app1/screens/components/content_boarding.dart';
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
      "imagen": "assets/images/B1.png",
      "titulo": "Item1",
      "descripcion": "fondo2"
    },
    {
      "imagen": "assets/images/B2.png",
      "titulo": "Item2",
      "descripcion": "fondo3"
    },
    {
      "imagen": "assets/images/B3.png",
      "titulo": "Item3",
      "descripcion": "fondo4"
    },
    {
      "imagen": "assets/images/B4.png",
      "titulo": "Item4",
      "descripcion": "fondo4"
    },
    {
      "imagen": "assets/images/B5.png",
      "titulo": "Item5",
      "descripcion": "fondo4"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 600,
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
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        listBoarding.length,
                        (index) =>
                            pages(index: index, currentePage: currentePage)),
                  ),
                ],
              ),
            ),
          ),
          const Expanded(
            flex: 2,
            child: Center(
              child: OutlinedButton(
                onPressed: null,
                child: Text('Button'),
              ),
            ),
          )
        ],
      ),
    );
  }
}

AnimatedContainer pages({required int index, required int currentePage}) {
  return AnimatedContainer(
    margin: const EdgeInsets.only(right: 5),
    width: currentePage == index ? 30 : 20,
    height: 5,
    duration: kThemeAnimationDuration,
    decoration: BoxDecoration(
        color: currentePage == index
            ? Colors.pink
            : const Color.fromARGB(255, 175, 171, 171)),
  );
}
