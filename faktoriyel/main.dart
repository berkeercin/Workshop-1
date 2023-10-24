void main() {
  //! Sayı belirlenir
  int sayi = 6;
  int sonuc = faktoriyel(sayi);
  print("Faktoriyel değeriniz: " + sonuc.toString());
}

int faktoriyel(int sayi) {
  //! Sayaç ve sonuç değerleri başlangıçta sayıyla aynı değere eşitlenir.
  int sonuc = sayi;
  while (sayi > 1) {
    //! Sayaç 1'den büyük olduğu sürece döngüyü devam ettir.
    sayi--;
    //! Sayacı bir düşür ki hem faktoriyel hesaplasın hemde sonsuz döngüye girmesin.
    sonuc = sonuc * (sayi);
    //! Sonuç ilk başta ana sayı ve ana sayının bir düşüğü ile çarpılır.
    //! Bir sonraki loopta ise değişen sonuç ana sayının bir azı olan sayaç ile çarpışır ve bu şekilde faktoriyel bulunur.
  }
  return sonuc;
}
