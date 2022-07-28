void main() {
  if ('admin'.isAdmin()) {
    print('admin');
  }
}

//burada string sınıfına extra özellik eklemiş oluyoruz kendimiz.
//Aynı zamanda bu yapıyı nullable olarak da kullanabiliriz.
//stringin sonuna soru işareti aattığımız zaman boş bile gelse kullanılabilir bir method olur
extension StringExtension on String? {
  bool isAdmin() {
    //this kısmına da soru işareti atamamız gerek yoksa hata verir
    //Eğer müşteri boş olarak gelenleri '' bu şekilde isterse aşağıdaki yaapıyı kullanabiliriz.
    //İki adet soru işareti demek(??) boş mu demektir.
    return (this ?? '').toLowerCase() == 'Admin'.toLowerCase();
  }
}
