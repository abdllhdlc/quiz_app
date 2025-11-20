class TestSorusu {
  const TestSorusu(this.soruMetni, this.cevaplar);

  final String soruMetni;
  final List<String> cevaplar;
  List<String> karistirilmisCevaplariAl() {
    final karistirilmisListe = List.of(cevaplar);
    karistirilmisListe.shuffle();
    return karistirilmisListe;
  }
}
