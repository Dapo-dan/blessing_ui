import 'package:blairsin/components/custom_button.dart';
import 'package:blairsin/components/customtext_button.dart';
import 'package:blairsin/components/customtext_field.dart';
import 'package:blairsin/constants/app_colors.dart';
import 'package:blairsin/constants/app_styles.dart';
import 'package:blairsin/constants/ui_helpers.dart';
import 'package:blairsin/screens/auth/login_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
            bottom: -60,
            right: 0,
            left: 0,
            child: Opacity(
              opacity: 0.4,
              child: Image.asset(
                "assets/signup.png",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const Text(
                  "Sign Up",
                  style: heading1,
                ),
                const Text(
                  "Create an account",
                  style: body2,
                ),
                const AuthField(
                  title: "Username",
                  image: "assets/username.png",
                ),
                const AuthField(
                  title: "Email",
                  image: "assets/email.png",
                ),
                const AuthField(
                  title: "Password",
                  image: "assets/lock.png",
                  ispassword: true,
                ),
                const AuthField(
                  title: "Confirm Password",
                  image: "assets/lock.png",
                  ispassword: true,
                ),
                verticalSpace(30),
                CustomAppButton(
                  width: 100,
                  height: 50,
                  onpressed: () {},
                  buttonlabel: "Sign Up",
                  textStyle: body1.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    "or",
                    style: body1.copyWith(
                      color: secondary8,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextButton(
                      onTap: () {},
                      buttontext: "Sign in with",
                      textstyle: body1,
                    ),
                    horizontalSpace(5),
                    Image.asset(
                      "assets/google.png",
                      width: 20,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextButton(
                      onTap: () {},
                      buttontext: "Already have an account?",
                      textstyle: body1,
                    ),
                    horizontalSpace(5),
                    CustomAppButton(
                      verticalPadding: 1,
                      width: 70,
                      height: 20,
                      onpressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const LoginPage(),
                          ),
                        );
                      },
                      buttonlabel: "Login",
                      textStyle: body2.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class AuthField extends StatelessWidget {
  const AuthField({
    required this.image,
    required this.title,
    this.ispassword = false,
    super.key,
  });

  final String image;
  final String title;
  final bool ispassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(10),
        Row(
          children: [
            Image.asset(
              image,
              width: 24,
              height: 24,
            ),
            horizontalSpace(7),
            Text(
              title,
              style: body1,
            ),
          ],
        ),
        verticalSpace(10),
        CustomTextInputField(
          ispassword: ispassword,
        ),
      ],
    );
  }
}
