

import 'dart:ffi';

class AllfieldModel {
  int? umumiy_maydon;

  AllfieldModel( {required this.umumiy_maydon});


  factory AllfieldModel.fromJson(Map<String, dynamic> json){
    return AllfieldModel(umumiy_maydon: json['umumiy_maydon'] as int );
  }
  
   
}
