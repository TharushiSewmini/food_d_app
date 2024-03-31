import 'package:flutter/material.dart';
import 'package:food_d_app/pages/login_Page.dart';
import 'package:food_d_app/pages/register_Page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool isLogin = true;

  void toggleScreen() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLogin) {
      return LoginPage(goRegister: toggleScreen,);
    } else {
      return RegisterPage(gotoLogin: toggleScreen,);
    }
  }
}
