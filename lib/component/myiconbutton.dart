import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton({
    super.key, 
    required this.imagePath, 
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 134, 133, 133)),
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(255, 232, 233, 233),
      ),
      child: Image.asset(imagePath,height: 40,),
    );
  }
}
