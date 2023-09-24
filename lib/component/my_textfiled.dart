import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.LabelText,
      required this.obsecureText});

  final TextEditingController controller;
  final String hintText;
  final String LabelText;
  final bool obsecureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        obscureText: false,
        decoration: InputDecoration(
          labelText: LabelText,
          hintText: hintText, // Added a comma here
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.red),
            gapPadding: 10,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(10), // Fixed the missing comma here
            borderSide:
                const BorderSide(color: Color.fromARGB(255, 4, 130, 226)),
            gapPadding: 10,
          ), // Added a missing closing parenthesis here
        ),
      ),
    );
  }
}