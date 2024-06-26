



class AllfieldModel {
  int jami;

  AllfieldModel( {required this.jami});


  factory AllfieldModel.fromJson(Map<String, dynamic> json){
    return AllfieldModel(jami: json['umumiy_maydon']  );
  }
  
   
}
