// import 'package:get/get.dart';
// import 'package:wheat_check/components/button.dart';
// import 'package:wheat_check/pages/exports.dart';
// import 'package:wheat_check/pages/stores/Add_Info_Controller.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   // LoginController controller = Get.put(LoginController());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 244, 239, 239),
//       body: SingleChildScrollView(
//         child: SizedBox(
//           height: MediaQuery.sizeOf(context).height,
//           child: Column(
//             children: [
//               // const SizedBox(height: 60),
          
//               Container(
                
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage('assets/images/harvester2.webp'
//                     ),
//                     fit: BoxFit.cover
//                   ),
//                 ),
//                 height: 400,
//                 // child: Image.asset('assets/images/harvester2.webp' ),
//               ),
          
//               const SizedBox(height: 20),
//               Padding(
//                 padding: const EdgeInsets.all(24.0),
//                 child: Input(
//                   hintText: "Loginni kiriting",
//                   // controller: (){,
//                 ),
//               ),
//               // const SizedBox(height: 16),
          
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 24),
//                 child: Input(
//                   hintText: "Parolni kiriting",
//                   controller: controller.password,
//                   obsureText: true,
//                 ),
//               ),
//               const SizedBox(height: 16),
//               Padding(
//                 padding: const EdgeInsets.all(24.0),
//                 child: Button(
//                   onTap: () {
//                     Get.to(() => const HomePage());
//                   },
//                   text: "Kirish",
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
