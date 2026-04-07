
import 'package:flutter/material.dart';

class H4StatefulWidget extends StatefulWidget{
  const H4StatefulWidget({super.key});

  @override
  H4SWState createState() => H4SWState();
}

class H4SWState extends State<H4StatefulWidget>{
  int a=0;
  void artirmaFonksionu(){
    setState(() {
      a++;
    });
  }
  @override
  Widget build(BuildContext con){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Statfull Widget Örneği"),
      ),
      body: Container(
        child: Row(
          children:<Widget>[
            Column(
              children: [
              Text("Mwtin Yazılan Kısım $a"),
              ElevatedButton(
                onPressed: artirmaFonksionu,
                child: const Text("Buttonun Adı"),
              ),
        ],
            ),
            Column(
                children: [
                  const Text("Metin Yazılan kısım 2"),
                  ElevatedButton(
                    onPressed: (){},
                    child: const Text("Button2 nin Adı"),
                  ),
                ]
            ),

          ],
        ),
      ),

    );
  }
}
