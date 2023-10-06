import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:halo/login_sucess_page.dart';
import 'sign_in/sign_in.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(), 
        builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else {
            if(snapshot.hasData){
              return  LoginSucessPage();
            } else{
              return SignInScreen();
            }
          }
        },
      ),
    );
  }
}