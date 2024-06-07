

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:wheat_check/pages/exports.dart';
import 'package:wheat_check/pages/login_page.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await dotenv.load(fileName:".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: const Color.fromARGB(255, 88, 81, 81),
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

