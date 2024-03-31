import 'package:flutter/material.dart';
import 'package:food_d_app/componenets/my_Button.dart';
import 'package:food_d_app/componenets/my_textfield.dart';
import 'package:food_d_app/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? goRegister;
  const LoginPage({super.key, required this.goRegister});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailContoller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    // authentication

    // navigate to the HomePage
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              // icon
              Icon(
                Icons.lock_open_rounded,
                size: 100,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              //name
              Text(
                "Food Delivery App",
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),

              const SizedBox(
                height: 25,
              ),
              //textfield 01
              MyTextField(
                  controller: emailContoller,
                  hintText: "Email",
                  obsecureText: false),
              const SizedBox(
                height: 20,
              ),

              //textfield 02
              MyTextField(
                controller: passwordController,
                hintText: 'Password :',
                obsecureText: true,
              ),
              const SizedBox(
                height: 25,
              ),
              //mybutton
              MyButton(
                buttonText: 'Login',
                onClick: login,
              ),
              const SizedBox(
                height: 25,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'New Member ?',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                    onTap: widget.goRegister,
                    child: Text(
                      'Click here to Register',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
