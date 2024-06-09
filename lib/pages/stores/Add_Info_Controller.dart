import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:wheat_check/config/my_dio.dart';
import 'package:wheat_check/pages/add_info.dart';
import 'package:wheat_check/pages/exports.dart';

class AddInfoController extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController area = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController hectare = TextEditingController();
  TextEditingController payment = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController sum = TextEditingController();
  TextEditingController fuel = TextEditingController();

  bool loading = false;
  

  var myDio = MyDio().dio();

fetchInfo()async{
  try{
    loading=true;
    update();
    var res = await myDio.get('https://mastercode.uz/api/all-data');
    area = res.data;
  }catch(err){
    print(err);
  }finally{
     loading=false;
    update();
  }
}


 bool validate() {
    return name.text.trim().isEmpty ||  area.text.trim().isEmpty;
        // date.text.trim().isEmpty ||
        // hectare.text.trim().isEmpty ||
        // payment.text.trim().isEmpty ||
        // price.text.trim().isEmpty ||
        // fuel.text.trim().isEmpty;
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
  
    if (area.text.trim() != date.text.trim()) {
      Get.snackbar("Error", "Ma'lumotlarni to'liq kiriting",
          backgroundColor: Colors.red, colorText: Colors.white);
      await Future.delayed(Duration(seconds: 3));
      loading = false;
      return;
    }
    try {
      loading = true;
      // update();
      var res = await myDio.post('https://mastercode.uz/api/send-data', data: {
        'fermer_hojalik_nomi': name.text.trim(),
        'area': area.text.trim(),
        'date': date.text.trim(),
        'payment_type': payment.text.trim(),
        'price': price.text.trim(),
        'summ':sum.text.trim(),
        'fuel': fuel.text.trim()
      });
      Get.snackbar("Success", "Ma'lumot qo'shildi");
      print(res);
      
    } catch (err) {
      print(err);
    } finally {
      loading = false;
      
    }
  }
}
