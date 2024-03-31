import 'package:flutter/material.dart';
import 'package:food_d_app/componenets/my_Button.dart';
import 'package:food_d_app/componenets/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? gotoLogin;
  const RegisterPage({super.key, required this.gotoLogin});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailContoller = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox( height: 45,),
                    // icon
                    Icon(
                      Icons.lock_open_rounded,
                      size: 100,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    //name
                    Text(
                      "Let's create an account for you ",
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
                      height: 20,
                    ),

                    //textfield 02
                    MyTextField(
                      controller: passwordController,
                      hintText: 'Confirm Password :',
                      obsecureText: true,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    //mybutton
                    MyButton(
                      buttonText: 'Login',
                      onClick: null,
                    ),
                    const SizedBox(
                      height: 25,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Already have an account ?',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Theme.of(context).colorScheme.primary),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        GestureDetector(
                          onTap: widget.gotoLogin,
                          child: Text(
                            'Login now',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary),
                          ),
                        )
                      ],
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
