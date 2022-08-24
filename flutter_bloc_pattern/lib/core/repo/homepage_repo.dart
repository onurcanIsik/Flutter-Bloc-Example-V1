// ignore_for_file: division_optimization

class MathRepo {
  int toplama(int sayi1, int sayi2) {
    int toplam = sayi1 + sayi2;

    return toplam;
  }

  int cikarma(int sayi1, int sayi2) {
    int cikar = sayi1 - sayi2;

    return cikar;
  }

  int bolme(int sayi1, int sayi2) {
    int bol = (sayi1 / sayi2).toInt();

    return bol;
  }

  int carpma(int sayi1, int sayi2) {
    int carp = sayi1 * sayi2;

    return carp;
  }
}
