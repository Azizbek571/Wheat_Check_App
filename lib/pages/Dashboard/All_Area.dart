import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:wheat_check/pages/exports.dart';
import 'package:wheat_check/pages/stores/Add_Info_Controller.dart';

class AllArea extends StatefulWidget {
  const AllArea({super.key});

  @override
  State<AllArea> createState() => _AllAreaState();
}

class _AllAreaState extends State<AllArea> {
  AddInfoController controller = Get.put(AddInfoController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddInfoController>(
      builder: (controller) {
        return Scaffold(
            appBar: AppBar(
              title: Text("DashBoard"),
            ),
            body: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 132, 186, 230)),
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Input(
                          hintText: "hintText",
                          controller: controller.area)
                    ]),
              ),
            )));
      },
    );
  }

 
}
