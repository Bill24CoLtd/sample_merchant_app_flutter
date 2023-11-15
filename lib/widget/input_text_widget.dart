import 'package:flutter/material.dart';

class InputTextWidget extends StatelessWidget {
  final String label;
  final TextInputType inputType;
  final TextEditingController controller;

  InputTextWidget({required this.label,required this.inputType,required this.controller});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding:const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8)
          ),
          label:Text(label)
        ),
        keyboardType: inputType,
      ),
    );
  }
}