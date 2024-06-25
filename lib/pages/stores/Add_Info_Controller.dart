import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:wheat_check/config/my_dio.dart';
import 'package:wheat_check/pages/add_info.dart';
import 'package:wheat_check/pages/exports.dart';

class AddInfoController extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController area = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController region = TextEditingController();
  TextEditingController payment = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController id = TextEditingController();
  // TextEditingController sum = TextEditingController();
  // TextEditingController fuel = TextEditingController();

  bool loading = false;
  

  var myDio = MyDio().dio();

  List names = [];



fetchInfo()async{
  try{
    loading=true;
    update();
    await Future.delayed(Duration(seconds: 3));
    var res = await myDio.get('https://mastercode.uz/api/all-data');
    print(res);
    names = res.data;
  }catch(err){
    print(err);
  }finally{
     loading=false;
    update();
  }
}




 bool validate() {
   
    return name.text.isEmpty || 
        area.text.trim().isEmpty ||
        date.text.trim().isEmpty ||
         area.text.trim().isEmpty ||
        payment.text.trim().isEmpty ||
        price.text.trim().isEmpty;
  }

  void addinfo() async {
    
    if(loading) return;
    loading =true;
    if (validate()) {
      Get.snackbar("Error", "Ma'lumotlarni to'liq kiriting",
          backgroundColor: Colors.red, colorText: Colors.white);
      await Future.delayed(Duration(seconds: 3));
      loading = false;
      return;
    }
    try {
      loading = true;
      update();
      var res = await myDio.post('https://mastercode.uz/api/send-data', data: {
        'fermer_hojalik_nomi': name.text.trim(),
        'region': region.text.trim(),
        'date': date.text.trim(),
        'area': area.text.trim(),
        'payment_type': payment.text.trim(),
        'price': price.text.trim(),
      });
      name.clear();
      region.clear();
      date.clear();
      area.clear();
      payment.clear();
      price.clear();
      Get.back();
      Get.snackbar("Success!", "Ma'lumot qo'shildi",
      backgroundColor: Colors.blueAccent, colorText: Colors.white,);
      print(res);
      
    } catch (err) {
      print(err);
    } finally {
      loading = false;
      update();
    }

  }

}
