import 'dart:convert';

import 'package:wheat_check/pages/Models/allfield_model.dart';
import 'package:wheat_check/pages/exports.dart';
import 'package:wheat_check/pages/post.dart';
import 'package:wheat_check/pages/stores/dashboard_controller.dart';
import 'package:http/http.dart' as http;


class AllArea extends StatefulWidget {
  const AllArea({super.key});

  @override
  State<AllArea> createState() => _AllAreaState();
}

class _AllAreaState extends State<AllArea> {
  AddInfoController controller = Get.put(AddInfoController());
  DashBoardController controller2 = Get.put(DashBoardController());
  DashBoardController controller3 = Get.put(DashBoardController());


      
  // Future<Post> fetchData() async{
  // final uri = Uri.parse("https://mastercode.uz/api/all-field");
  // final response = await http.get(uri);

  // if (response.statusCode ==200){
  // return Post.fromJson(json.decode(response.body));
  // }else{
  //   throw Exception('Failed to load post');
  // }
  // }

  


  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddInfoController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 219, 232, 238),
            appBar: AppBar(
             backgroundColor: const Color.fromARGB(255, 219, 232, 238),
              title: const Text("DashBoard"),
            ),
            body:
            
             SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                   
                   
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 123, 186, 238),
                          borderRadius: BorderRadius.circular(12)),
                        height: 100,
                        width: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                            const Text("Jami o'rilgan maydon:", 
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                            ),

                            controller2.maydon==null?Text('0'):
                            Row(
                              children: [
                                const SizedBox(width: 30),
                                Text(controller2.maydon!.jami.toString(),
                                                                  style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                                                                  ),
                                const SizedBox(width: 15),
                                const Text("gektar",
                                 style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
     

                   
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 123, 186, 238),
                          borderRadius: BorderRadius.circular(12)),
                        height: 100,
                        width: 300,
                        child: const Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                
                                Text("Kunlik o'rim natijalari:", 
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                                ),
                                // Row(
                                //   children: [
                                //     SizedBox(width: 30),
                                //     Text("520",
                                //      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),),
                                //     SizedBox(width: 15),
                                //     Text("gektar",
                                //      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),),
                                //   ],
                                // ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                    ),




                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 123, 186, 238),
                          borderRadius: BorderRadius.circular(12)),
                        height: 100,
                        width: 300,
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                            Text("Umumiy to'lov summasi:", 
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                            ),




                            controller3.sum==null?Text('0'):

                            Row(
                              children: [
                                SizedBox(width: 30),
                                Text(
                                  controller3.sum!.jami2.toString(),

                                 style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),),
                                SizedBox(width: 15),
                                Text("so'm",
                                 style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 123, 186, 238),
                          borderRadius: BorderRadius.circular(12)),
                        height: 100,
                        width: 300,
                        child: const Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                
                                Text("To'lov turi:", 
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                                ),
                                // Row(
                                //   children: [
                                //     SizedBox(width: 30),
                                //     Text("520",
                                //      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),),
                                //     SizedBox(width: 15),
                                //     Text("gektar",
                                //      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),),
                                //   ],
                                // ),
                              ],
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                    ),

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
                  ],
                ),
              ),
            ));
      },
    );
  }

 
}
