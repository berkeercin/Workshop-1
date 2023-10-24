void main() {
  //! Sayı belirlenir.
  int number = 1000;
  //! liste stringi tanımlanır.
  String baseList = "";
  //* Fonksiyonun çağırılma ve print alma komutları.
  baseList = primeList(number);
  print(baseList);
}

//! Asal olup olmadığını algılayıp 1 veya 0 değerini veren fonksiyon.
int isPrimeFunc(int number) {
  //* number2 değişkeni number üzerinde işlem yapılmadan aynı sayı üzerinde işlem yapılması için kullanılıyor.
  int number2;
  number2 = number;
  if (number2 == 2) {
    //* eğer girilen sayı 2 ise kodu bozmaması için işleme sokmadan asal sayı olduğu yazılıyor.
    return 1;
  }
  while (number2 > 2) {
    //* Herhangi bir değer atanmadan sonuç değeri -1 olarak giriliyor. (Boş değer girilemediği için)
    int result = -1;
    number2--;
    //* yedek alınan numara bir azaltılır ve gerçek numara ile bölündüğünde kalanı bulunur.
    result = number % number2;
    if (result == 0) {
      //* eğer kalan 0 ise o sayı kendi ve 1 harici diğer sayılara da bölünebiliyor demektir, yani asal değildir.
      return 0;
    }
  }
  //* eğer yukarıdaki if bloğuna takılmadıysa asal sayıdır ve değeri 1 olarak yazılır.
  return 1;
}

//! Asal sayılar listesini oluşturmamızı sağlayan fonksiyon.
String primeList(int number) {
  //* temel içi boş olan liste oluşturuluyor.
  String baseList = "";
  //* numaranın 0 ya da 1 olup olmadığı if else blokları ile kontrol ediliyor.
  if (number == 0) {
    baseList = "0 asal sayı değildir.";
  } else if (number == 1) {
    baseList = "1 asal sayı değildir.";
  }
  //* while döngüsü ile sayıyı 2 değerine kadar kontrol ediliyor
  while (number > 1) {
    //* numaranın asal olup olmadığını kontrol eden fonksiyonu çağırır.
    var isPrime = isPrimeFunc(number);
    //* eğer sayı asalsa listeye eklenir. değilse geçilir.
    if (isPrime == 1) {
      baseList += "\"" + number.toString() + "\"  ";
    }
    //* döngüde bir sonraki sayıya geçilebilmesi için sayı azaltılır.
    number--;
  }
  //* sonuç döndürülür.
  return baseList;
}
