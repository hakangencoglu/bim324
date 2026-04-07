
import 'package:flutter/material.dart';

class H5PopupTextField extends StatefulWidget{
  const H5PopupTextField({super.key});

  @override
  H5PTFState createState() => H5PTFState();
}

class H5PTFState extends State<H5PopupTextField>{
  TextEditingController textController = TextEditingController();

  void popupAc(){
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Alert Dialog"),
            content: Column(
              children: [
                Text(
                  textController.text
                ),
              ],
            ) ,
            actions: [
              TextButton(
                  onPressed: (){},
                  child: const Text("Text Butonu")
              ),
              ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text("Kapamak için Tıkla"),
              )
            ],
          );
        }
    );
  }

  @override

  Widget build(BuildContext context){
    return Column(
      children: [
        TextField(
          controller: textController,
          decoration: const InputDecoration(
            labelText: "Metin Giriniz",
          ),
        ),
        ElevatedButton(
            onPressed: popupAc,
            child: const Text("Popup ı göster"),
        )


      ],
    );
  }
}