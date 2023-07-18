import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final funValidator;
  //추가
  final String? value;
  final controller;

  const CustomTextFormField({
    required this.hint,
    required this.funValidator,
    //추가
   this.value,
   this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        //추가
        controller: controller,
        initialValue: value,
        validator: funValidator,
        obscureText: hint=="Password" ? true : false,
        decoration: InputDecoration(
            hintText: "Enter $hint",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            )
        ),
      ),
    );
  }
}
