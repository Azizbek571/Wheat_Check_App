import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wheat_check/pages/add_info.dart';
import 'package:wheat_check/pages/exports.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 239, 239),
      body: Material(
        child: Center(
          child: Column(
            children: [
              SizedBox(width: 50, height: 100),
              Text(
                // SizedBox(width: 50,),
                "G'alla - 2024",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
              Column(
                children: [
                  const SizedBox(height: 50),
                  Material(
                    borderRadius: BorderRadius.circular(16),
                    child: Ink(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(16),
                        onTap: () {
                          Get.to(()=> const AddInfo());
                        },
                        child: Container(
                          height: 60,
                          width: 300,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.blue[500]),
                          child: const Row(
                            children: [
                              Text(
                                "Ma'lumot kiritish",
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.w700),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Material(
                    borderRadius: BorderRadius.circular(16),
                    child: Ink(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(16),
                        onTap: () {},
                        child: Container(
                          height: 60,
                          width: 300,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.blue[500]),
                          child: const Row(
                            children: [
                              Text(
                                "DashBoard",
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.w700),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Material(
                    borderRadius: BorderRadius.circular(16),
                    child: Ink(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(16),
                        onTap: () {},
                        child: Container(
                          height: 60,
                          width: 300,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.blue[500]),
                          child: const Row(
                            children: [
                              Text(
                                "Tarix",
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.w700),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Image.asset(
                    'assets/images/harvester.webp',
                    height: 300,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
