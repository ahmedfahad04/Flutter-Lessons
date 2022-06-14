class Recepie {
  String? label;
  String? imgURL;

  Recepie(this.label, this.imgURL);

  static List<Recepie> samples = [
    Recepie("Mutton", "/asset/img1.jpg"),
    Recepie("Beef", "/asset/img2.jpg"),
  ];
}
