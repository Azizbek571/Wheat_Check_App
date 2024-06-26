


import 'package:wheat_check/config/my_dio.dart';
import 'package:wheat_check/pages/Models/allfield_model.dart';
import 'package:wheat_check/pages/Models/allsum.dart';
import 'package:wheat_check/pages/exports.dart';

class DashBoardController extends GetxController{

  @override
  void onInit() {
    fetchInfofield();   
    fetchallSum();
    super.onInit();
  }

  bool loading = false;
  var myDio = MyDio().dio();
  AllfieldModel? maydon;
  AllsumModel? sum;


  Future fetchInfofield()async{ 
  try{
    loading=true;
    update();
    var res = await myDio.get('https://mastercode.uz/api/all-field');
    print(res.data);
    
    maydon = AllfieldModel.fromJson(res.data); 
    
  }catch(err){
    print(err);
  }finally{
     loading=false;
    update();
  }
}

  Future fetchallSum()async{ 
  try{
    loading=true;
    update();
    var res = await myDio.get('https://mastercode.uz/api/all-sum');
    print(res.data);
    
    sum = AllsumModel.fromJson(res.data);
    
  }catch(err){
    print(err);
  }finally{
     loading=false;
    update();
  }
}




}