import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wheat_check/components/input.dart';
import 'package:wheat_check/models/post.dart';
import 'package:wheat_check/pages/addInfoPages.dart';
import 'package:wheat_check/pages/exports.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:wheat_check/pages/stores/Add_Info_Controller.dart';

class AddInfo extends StatefulWidget {
  const AddInfo({super.key});

  @override
  State<AddInfo> createState() => _AddInfoState();
}

class _AddInfoState extends State<AddInfo> {
  // TextEditingController nameType = TextEditingController();
  AddInfoController controller = Get.put(AddInfoController());




  // postData() async {
  //   try{
  //   var response = await http.post(
  //       Uri.parse("https://mastercode.uz/api/send-data"),
  //       body: {
  //         "fermer_hojalik_nomi": "Azizbek",
  //         "area": "50",
  //         "date": "06.06.2024",
  //         "payment_type": "naqd",
  //         "price": "200.000",
  //         "summ": "250.000",
  //         "fuel":"300.000"
  //       });
  //   print(response.body);
  //   }catch(e){
  //     print(e);
  //   }
  // }




// Future<PostModel> fetchPost()async{
//   final uri = Uri.parse("https://mastercode.uz/api/send-data");
//   final response = await http.get(uri);
//   if (response.statusCode ==200){
//     return PostModel.fromJson(json.decode(response.body));
//   }else{
//     throw Exception('Failed to load post');
//   }
// }

// Future<PostModel>createPost(
  
//    String fermer_hojalik_nomi,
//    String area,
//    String date,
//    String payment_type,
//    String price,
//    String summ,
//    String fuel,
//  )async{
//   Map<String, dynamic> request = {
//     'fermer_hojalik_nomi': fermer_hojalik_nomi,
//     'area': area,
//     'date':date,
//     'payment_type': payment_type,
//     'price': price,
//     'summ':summ,
//     'fuel': fuel
//   };
//   final uri = Uri.parse("https://mastercode.uz/api/send-data");
//   final response = await http.post(uri, body: request);
//  if (response.statusCode==201){
//   return PostModel.fromJson(json.decode(response.body));
//  }else{
//   throw Exception("Failed to load post");
//  }


//  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'G\'alla 2024',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 500),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                AddInfoPage(
                  hintText: "F/X nomi:",
                  child: Input(
                      hintText: "F/X nomini kiriting", controller: controller.name),
                ),
                AddInfoPage(
                  hintText: "Hudud:",
                  child:
                      Input(hintText: "Hududni kiriting", controller: controller.area),
                ),
                AddInfoPage(
                  hintText: "Sana:",
                  child:
                      Input(hintText: "Sanani kiriting", controller: controller.date),
                ),
                AddInfoPage(
                  hintText: "O'rilgan maydon(gr):",
                  child: Input(
                      hintText: "O'rilgan maydonni kiriting",
                      controller: controller.hectare),
                ),
                AddInfoPage(
                  hintText: "To'lov turi:",
                  child: Input(
                      hintText: "To'lov turini kiriting", controller: controller.name),
                ),
                AddInfoPage(
                  hintText: "Narxi:",
                  child:
                      Input(hintText: "Narxini kiriting", controller: controller.name),
                ),
                AddInfoPage(
                  hintText: "Jami:",
                  child: Input(hintText: "", controller: controller.name),
                ),
                Row(
                  children: [
                    const SizedBox(width: 60),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: const Center(
                            child: Text(
                              "Ortga",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 50),
                    Ink(
                      child: InkWell(
                        onTap: () {
                          controller.addinfo();
                          // postData();
                          // fetchPost();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 100,
                            decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: const Center(
                              child: Text(
                                "Saqlash",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
