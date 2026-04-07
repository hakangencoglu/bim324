import 'package:flutter/material.dart';

// ignore: must_be_immutable
class H4StatelessWidget extends StatelessWidget{
 int a=0;

  H4StatelessWidget({super.key});
  @override
  Widget build(BuildContext context){
  return Scaffold(
    body:
    //Container(
    Column(
      children:[
        Text(
        'Stateless widget örneği $a',
        style: const TextStyle(
          color: Colors.red,
          fontSize: 30,
          fontFamily: 'Times New Roman'
        ),
      ),
        ElevatedButton(
          onPressed: () {
            a++;
          },
          child: const Text('Düğmeye Tıkla'),
        ),
    ]
    ),
  );
}
}