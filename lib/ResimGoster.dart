import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ResimSaglayici.dart';


class ResimGoster extends StatelessWidget {
  const ResimGoster({super.key});

  @override
  Widget build(BuildContext context) {
    final resimSaglayici = Provider.of<ResimSaglayici>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Rastgele Resim')),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            resimSaglayici.yukleniyor
                ? const CircularProgressIndicator()
                : resimSaglayici.imageURL != null
                ? Image.network(resimSaglayici.imageURL!)
                : const Text("Henüz resim yüklenmedi"),
            ElevatedButton(
              onPressed: () {
                resimSaglayici.fetchRandomImage();
                },
              child: const Text('Yeni Resim Getir'),
            ),
          ],
        ),
      )
    );
  }
}