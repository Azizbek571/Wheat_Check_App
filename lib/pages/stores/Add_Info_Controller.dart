import 'package:get/get.dart';
import 'package:wheat_check/config/my_dio.dart';
import 'package:wheat_check/pages/add_info.dart';
import 'package:wheat_check/pages/exports.dart';

class AddInfoController extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController area = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController hectare = TextEditingController();

  bool loading = false;

  var myDio = MyDio().dio();

  bool validate() {
    return name.text.trim().isEmpty ||
        area.text.trim().isEmpty ||
        hectare.text.trim().isEmpty;
  }

  void addinfo() async {
    if (loading) return;
    loading = true;

    if (validate()) {
      Get.snackbar("Error", "Ma'lumotlarni to'liq kiriting",
          backgroundColor: Colors.red, colorText: Colors.white);
      await Future.delayed(Duration(seconds: 3));
      loading = false;
      return;
    }
    if (
      name.text.trim() != hectare.text.trim()) {
      Get.snackbar("Error", "Ma'lumotlarni to'liq kiriting",
          backgroundColor: Colors.red, colorText: Colors.white);
      await Future.delayed(Duration(seconds: 3));

      loading = false;
      return;
    }
    try {
   var res = await myDio.post('https://mastercode.uz/api/send-data', data: {
      'fermer_hojalik_nomi': name.text.trim(),
    'area': area.text.trim(),
    'date':date.text.trim(),
    // 'payment_type': payment_type,
    // 'price': price,
    // 'summ':summ,
    // 'fuel': fuel
   });
   print(res);
    } catch (err) {
      print(err);
    } finally {
      loading = false;
    }
  }
}
