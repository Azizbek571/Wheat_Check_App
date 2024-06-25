import 'package:wheat_check/components/Custom_dropdown/custom_dropdown.dart';
import 'package:wheat_check/pages/exports.dart';

class AddInfo extends StatefulWidget {
  const AddInfo({super.key});
  @override
  State<AddInfo> createState() => _AddInfoState();
}

class _AddInfoState extends State<AddInfo> {
  AddInfoController controller = Get.put(AddInfoController());
  TextEditingController _dateController = TextEditingController();
  TextEditingController paymentTypeC = TextEditingController();

  List<String> _list = ['Naqd', 'Click', 'Bank orqali'];

  Future<void> _selectDate() async {
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2023),
        lastDate: DateTime(2030));
    if (_picked != null) {
      setState(() {
        controller.date.text = _picked.toString().split(" ")[0];
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
                          controller: controller.region),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          controller: controller.date,
                          decoration: const InputDecoration(
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
                          controller: controller.area),
                    ),
                    PaymentType(
                      hintText: "To'lov turi",
                      child: CustomDropdown<String>(
                        decoration: CustomDropdownDecoration(
                            closedBorderRadius: BorderRadius.circular(5),
                            closedBorder: Border.all(color: Colors.black),
                            // closedFillColor: const Color.fromARGB(255, 117, 165, 247),
                            expandedFillColor:
                                const Color.fromARGB(255, 133, 197, 250)),
                        hintText: 'To\'lov turini tanlang',
                        items: _list,
                        // initialItem: _list[0],
                        onChanged: (value) {
                          controller.payment.text=value!;
                          print('changing value to: $value');
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    AddInfoPage(
                      hintText: "Narxi:",
                      child: Input(
                          hintText: "Narxini kiriting",
                          controller: controller.price),
                    ),
                    const SizedBox(height: 5),
                    // Row(
                    //   children: [
                    //     Container(
                    //         height: 40,
                    //         width: 80,
                    //         padding: const EdgeInsets.all(10),
                    //         decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(15),
                    //             color:
                    //                 const Color.fromARGB(252, 123, 192, 249)),
                    //         child: const Text(
                    //           "Jami:",
                    //           style: TextStyle(
                    //               fontSize: 18, fontWeight: FontWeight.w700),
                    //         )),
                    //     const SizedBox(width: 10),
                    //     Column(
                    //       children: [
                    //         Row(
                    //           children: [
                    //             Container(
                    //                 decoration: BoxDecoration(
                    //                   border: Border.all(color: Colors.black),
                    //                     borderRadius: BorderRadius.circular(7),
                    //                     ),
                    //                 padding: const EdgeInsets.all(10),
                    //                 height: 50,
                    //                 width: 200,
                    //                 child: const Text(
                    //                   "500.000.000",
                    //                   style: TextStyle(
                    //                       fontSize: 18,
                    //                       fontWeight: FontWeight.w700),
                    //                 )),
                    //             const SizedBox(width: 5),
                    //             const Text(
                    //               "So'm",
                    //               style: TextStyle(
                    //                   fontSize: 18,
                    //                   fontWeight: FontWeight.w700),
                    //             )
                    //           ],
                    //         ),
                    //         Row(
                    //           children: [
                    //             Container(
                                  
                    //                 decoration: BoxDecoration(
                    //                   border: Border.all(color: Colors.black),
                    //                     borderRadius: BorderRadius.circular(7),
                    //                     ),
                    //                 padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    //                 height: 50,
                    //                 width: 100,
                    //                 child: const Text(
                    //                   "120",
                    //                   style: TextStyle(
                    //                       fontSize: 18,
                    //                       fontWeight: FontWeight.w700),
                    //                 )),
                    //             const SizedBox(width: 5),
                    //             const Text(
                    //               "litr",
                    //               style: TextStyle(
                    //                   fontSize: 18,
                    //                   fontWeight: FontWeight.w700),
                    //             )
                    //           ],
                    //         ),
                    //       ],
                    //     ),
                    //   ],
                    // ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const SizedBox(width: 40),
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
