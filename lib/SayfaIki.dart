import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SayfaIki extends StatelessWidget{
  const SayfaIki({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigasyon Örneği"),
      ),
      body: Container(
        child: ElevatedButton(
            onPressed: ()=>{
              Navigator.pop(context),
            },
            child: const Text("Geri Dön!!")
        ),
      ),
    );
  }
}