import 'package:flutter/material.dart';
import 'package:quiz_app/sonuclar/sonuc_itemler.dart';

class Sonuclar extends StatelessWidget {
  const Sonuclar(this.sonucVerisi, {super.key});

  final List<Map<String, Object>> sonucVerisi;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
            children: sonucVerisi.map(
          (veri) {
            // return Row(
            //   children: [
            //     Text(((veri['soru_numarasi'] as int) + 1).toString()),
            //     Expanded(
            //       child: Column(
            //         children: [
            //           Text(veri['soru'] as String),
            //           Text(veri['dogru_cevap'] as String),
            //         ],
            //       ),
            //     ),
            //   ],
            // );
            return SonucItemler(veri);
          },
        ).toList()),
      ),
    );
  }
}
