import 'package:flutter/material.dart';

class H3_1 extends StatelessWidget{
  const H3_1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("İlk Örnek"),
            ),
            body:
            Column(
                children:<Widget>[

                  const Text(
                    "Stateless Widget Örneği",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                      fontFamily: 'Times New Roman',
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Düğmeye Tıkla"),
                  ),
                ]
            )

        )
    );
  }
}

