import 'package:flutter/material.dart';
import 'package:halo/sign_in/sign_in.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:halo/sign_up/sign_up.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({
    super.key,
    required this.lableText,
    required this.pageRoute, 
  });

  final String lableText;
  final String pageRoute;


 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () {
              if (pageRoute == 'register') {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=>SignUpScreen()),
                );
              }
              if (pageRoute=='login') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>SignInScreen()),
                );
              }
            },
            child: Text(
              lableText,
              style: GoogleFonts.lato(
                textStyle: Theme.of(context).textTheme.displaySmall,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
