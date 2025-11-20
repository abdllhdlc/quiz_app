import 'package:flutter/material.dart';
import 'package:quiz_app/cevap_butonu.dart';
import 'package:quiz_app/veri/sorular.dart';
import 'package:google_fonts/google_fonts.dart';

class SoruEkrani extends StatefulWidget {
  const SoruEkrani({super.key, required this.cevapSecildiginde});
  final void Function(String cevap) cevapSecildiginde;

  @override
  State<SoruEkrani> createState() {
    return _SoruEkraniDurumu();
  }
}

class _SoruEkraniDurumu extends State<SoruEkrani> {
  var soruIndeksi = 0;

  void soruyuCevapla(String secilenCevaplar) {
    widget.cevapSecildiginde(secilenCevaplar);
    setState(() {
      soruIndeksi++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ekrandakiSoru = sorular[soruIndeksi];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              ekrandakiSoru.soruMetni,
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ...ekrandakiSoru.karistirilmisCevaplariAl().map((cevap) {
              return CevapButonu(
                  cevapMetni: cevap,
                  onTap: () {
                    soruyuCevapla(cevap);
                  });
            }),
          ],
        ),
      ),
    );
  }
}
