



class AllsumModel {
  int jami2;

  AllsumModel( {required this.jami2});


  factory AllsumModel.fromJson(Map<String, dynamic> json){
    return AllsumModel(jami2: json['umumiy_summa']  );
  }
  
   
}
