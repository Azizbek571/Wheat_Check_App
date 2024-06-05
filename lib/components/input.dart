import 'package:flutter/material.dart';

class Input extends StatelessWidget {
      Input({super.key, required this.hintText, required this.controller, this.obsureText=false});
   final String hintText;
   final TextEditingController controller;
   bool obsureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obsureText,
      decoration: InputDecoration(focusedBorder: const OutlineInputBorder(),
      enabledBorder: const OutlineInputBorder(),
      hintText: hintText,
      ),
    );
  }
}
