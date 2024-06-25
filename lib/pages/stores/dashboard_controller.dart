
import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:wheat_check/config/my_dio.dart';
import 'package:wheat_check/pages/Models/allfield_model.dart';
import 'package:wheat_check/pages/exports.dart';

class DashBoardController extends GetxController{

  @override
  void onInit() {
    fetchInfofield();   
    super.onInit();
  }

  bool loading = false;
  var myDio = MyDio().dio();
  AllfieldModel? umumiy_maydon;


  Future fetchInfofield()async{ 
  try{
    loading=true;
    update();
    await Future.delayed(Duration(seconds: 3));
    var res = await myDio.get('https://mastercode.uz/api/all-field');
    print(res.data);
    
    umumiy_maydon = AllfieldModel.fromJson(res.data); 

  }catch(err){
    print(err);
  }finally{
     loading=false;
    update();
  }
}

// @override
//   void onInit() {
//     fetchInfofield();
//     super.onInit();
//   }

}