import 'package:flutter/material.dart';


class mytextfiled extends StatelessWidget {
  const mytextfiled({super.key, this.controller, 
  required this.hintText, 
  required this.labelText, 
  required this.obcureText});

  final controller;
  final String hintText;
  final String labelText;
  final bool obcureText;

  @override
  Widget build(BuildContext context) {
    return  Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: controller,
                  obscureText: obcureText,
                  decoration: InputDecoration(
                    labelText: labelText,
                    hintText: hintText, // Added a comma here
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.red),
                      gapPadding: 10,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10), // Fixed the missing comma here
                      borderSide: const BorderSide(color: Color.fromARGB(255, 4, 130, 226)),
                      gapPadding: 10,
                    ), // Added a missing closing parenthesis here
                  ),
                ),
              );
  }
}