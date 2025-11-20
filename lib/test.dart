import 'package:flutter/material.dart';
import 'package:quiz_app/baslangic_ekrani.dart';
import 'package:quiz_app/soru_ekrani.dart';
import 'package:quiz_app/veri/sorular.dart';
import 'package:quiz_app/sonuc_ekrani.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() {
    return _TestDurumu();
  }
}

class _TestDurumu extends State<Test> {
  List<String> secilenCevaplar = [];
  // Widget? aktifEkran;
  var aktifEkran = 'baslangic-ekrani';

  // @override
  // void initState() {
  //   aktifEkran = BaslangicEkrani(ekranDegistir);
  //   super.initState();
  // }

  void ekranDegistir() {
    setState(() {
      // aktifEkran = const SoruEkrani();
      aktifEkran = 'soru-ekrani';
    });
  }

  void cevapSec(String cevap) {
    secilenCevaplar.add(cevap);

    if (secilenCevaplar.length == sorular.length) {
      setState(() {
        aktifEkran = 'sonuc-ekrani';
      });
    }
  }

  void testiYenidenBaslat() {
    setState(() {
      secilenCevaplar = [];
      aktifEkran = 'soru-ekrani';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget ekranWidgeti = BaslangicEkrani(ekranDegistir);
    if (aktifEkran == 'soru-ekrani') {
      ekranWidgeti = SoruEkrani(cevapSecildiginde: cevapSec);
    }
    if (aktifEkran == 'sonuc-ekrani') {
      ekranWidgeti = SonucEkrani(
        secilmisCevaplar: secilenCevaplar,
        yenidenBaslat: testiYenidenBaslat,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 13, 61, 151),
                Color.fromARGB(255, 89, 80, 216),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          //child: aktifEkran,
          // child: aktifEkran == 'baslangic-ekrani'
          //     ? BaslangicEkrani(ekranDegistir)
          //     : const SoruEkrani(),
          child: ekranWidgeti,
        ),
      ),
    );
  }
}
