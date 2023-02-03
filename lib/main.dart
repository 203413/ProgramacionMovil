import 'package:app1/pages/act01.dart';
import 'package:app1/pages/act02.dart';
import 'package:app1/pages/act03.dart';
import 'package:app1/pages/login.dart';
import 'package:app1/pages/register.dart';
import 'package:app1/screens/body_boarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BodyBoarding(),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(home: MoodyGradient());
//   }
// }

// class MoodyGradient extends StatelessWidget {
//   const MoodyGradient({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment(0.8, 1),
//             colors: <Color>[
//               Color(0xff1f005c),
//               Color(0xff5b0060),
//               Color(0xff870160),
//               Color(0xffac255e),
//               Color(0xffca485c),
//               Color(0xffe16b5c),
//               Color(0xfff39060),
//               Color(0xffffb56b),
//             ],
//             tileMode: TileMode.mirror,
//           ),
//         ),
//         child: const Center(
//           child: CircleAvatar(radius: 50,backgroundImage: NetworkImage('https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2021/06/vander-films-apvb8kmih5w-unsplash-scaled.jpeg?fit=1200%2C900&quality=60&strip=all&ssl=1%27%27'),)
//         ),
//       ),
//     );
//   }
// }
