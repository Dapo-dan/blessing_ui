import 'package:blairsin/components/custom_button.dart';
import 'package:blairsin/constants/app_colors.dart';
import 'package:blairsin/constants/app_styles.dart';
import 'package:blairsin/constants/ui_helpers.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ShaderMask(
              blendMode: BlendMode.dstIn,
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Colors.transparent],
                ).createShader(bounds);
              },
              child: Image.asset(
                "assets/login.png",
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              height: screenHeight(context) * 0.5,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(
                    50,
                  ),
                  topRight: Radius.circular(
                    50,
                  ),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Login",
                        style: body2.copyWith(
                          color: secondary3,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        width: 1,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade700,
                        ),
                      ),
                      Text(
                        "Sign Up",
                        style: body2.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomAppButton(
                        verticalPadding: 1,
                        width: screenWidth(context) * 0.7,
                        height: 44,
                        borderRadius: 10.0,
                        onpressed: () {},
                        buttonlabel: "Login",
                        textStyle: body2.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      horizontalSpace(
                        10,
                      ),
                      Image.asset(
                        "assets/facelock.png",
                        width: 40,
                        height: 44,
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
