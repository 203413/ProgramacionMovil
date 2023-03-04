import 'package:app1/pages/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class View extends StatefulWidget {
  const View({super.key});

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  List<bool> isSelected = [false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 26, 26, 112),
        titleSpacing: 0.0,
        title: const Text('Regístrate'),
        leading: IconButton(
          onPressed: () {},
          icon: IconButton(
            color: Colors.red,
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/images/B5.png'),
            onPressed: null,
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: LayoutBuilder(
            builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: viewportConstraints.maxHeight,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Text(
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 77, 77, 77)),
                            "Crea una cuenta para usar la app",
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 60, right: 310),
                          child: Text(
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              "Nombre"),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(135, 107, 101, 101))),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                              hintText: ' Name',
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 220),
                          child: Text(
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              "Correo electronico"),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(135, 107, 101, 101))),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                              hintText: ' Email',
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 282),
                          child: Text(
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              "Contraseña"),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(135, 107, 101, 101))),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                              hintText: ' Password',
                            ),
                          ),
                        ),
                        CheckboxListTile(
                          title: RichText(
                            text: TextSpan(
                              text: '¿Ya tienes una cuenta? ',
                              style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Inicia sesión',
                                    style: const TextStyle(color: Colors.red),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {}),
                              ],
                            ),
                          ),
                          controlAffinity: ListTileControlAffinity.leading,
                          onChanged: (bool? value) {},
                          value: isSelected[0], //  <-- leading Checkbox
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 145),
                          child: SizedBox(
                            height: 50,
                            width: 300,
                            child: MaterialButton(
                              color: Colors.green,
                              onPressed: () async {},
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Text('Continuar',
                                  style: TextStyle(fontSize: 16)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: RichText(
                            text: TextSpan(
                              text: '¿Ya tienes una cuenta? ',
                              style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Inicia sesión',
                                    style: const TextStyle(color: Colors.red),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Login()));
                                      }),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
