import 'package:flutter/material.dart';

class AddInfo extends StatefulWidget {
  const AddInfo({super.key});

  @override
  State<AddInfo> createState() => _AddInfoState();
}

class _AddInfoState extends State<AddInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'G\'alla 2024',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
        ),
      ),
      body: Column(
        children: [Text("F/X nomi")],
      ),
    );
  }
}
