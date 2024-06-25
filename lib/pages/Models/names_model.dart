class NamesModel {
  String fermer_hojalik_nomi;
  String area;
  String date;
  String payment_type;
  String price;
  String summ;
  String fuel;
  NamesModel({
    required this.fermer_hojalik_nomi,
    required this.area,
    required this.date,
    required this.payment_type,
    required this.price,
    required this.summ,
    required this.fuel,
  });
  factory NamesModel.fromJson(Map<String, dynamic> json) => NamesModel(
      fermer_hojalik_nomi: json['fermer_hojalik_nomi'],
      area: json['area'],
      date: json['date'],
      payment_type: json['payment_type'],
      price: json['price'],
      summ: json['summ'],
      fuel: json['fuel']);
}
