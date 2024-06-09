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
  AddInfoController controller = Get.put(AddInfoController());
  TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate() async {
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2023),
        lastDate: DateTime(2030));
    if (_picked != null) {
      setState(() {
        _dateController.text = _picked.toString().split(" ")[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddInfoController>(
      builder: (controller) {
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
                          hintText: "F/X nomini kiriting",
                          controller: controller.name),
                    ),
                    AddInfoPage(
                      hintText: "Hudud:",
                      child: Input(
                          hintText: "Hududni kiriting",
                          controller: controller.area),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          controller: _dateController,
                          decoration: InputDecoration(
                              labelText: 'Sana',
                              filled: true,
                              prefixIcon: Icon(Icons.calendar_today),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey))),
                          readOnly: true,
                          onTap: () {
                            _selectDate();
                          },
                        ),
                      ],
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
                          hintText: "To'lov turini kiriting",
                          controller: controller.payment),
                    ),
                    AddInfoPage(
                      hintText: "Narxi:",
                      child: Input(
                          hintText: "Narxini kiriting",
                          controller: controller.price),
                    ),
                            SizedBox(height: 5),

                    Row(
                      children: [
                        Container(
                            height: 40,
                            width: 80,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color.fromARGB(252, 123, 192, 249)),
                            child: Text(
                              "Jami:",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            )),
                            SizedBox(width: 5),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: const Color.fromARGB(255, 179, 218, 250)),
                            padding: EdgeInsets.all(10),
                            height: 40,
                            width: 200,
                            child: Text("500.000.000",  style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),)),
                            SizedBox(width: 5),

                        Text("So'm",  style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),)
                      ],
                    ),
                            SizedBox(height:10),

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
      },
    );
  }
}
