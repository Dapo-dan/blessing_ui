import 'package:blairsin/constants/app_colors.dart';
import 'package:blairsin/constants/app_styles.dart';
import 'package:blairsin/constants/ui_helpers.dart';
import 'package:flutter/material.dart';

class CustomAppButton extends StatelessWidget {
  const CustomAppButton({
    required this.onpressed,
    this.buttonlabel = '',
    this.buttonIdentifier,
    this.fontsize,
    this.buttoncurve,
    this.buttoncolor,
    this.textcolor,
    this.textStyle,
    this.bordersidecolor,
    this.verticalPadding,
    this.allowSubmit = true,
    this.overrideDefaultOnPressed = false,
    Key? key,
    this.horizontalPadding,
    this.width,
    this.height,
    this.elevation,
    this.borderRadius,
    this.borderWidth,
  }) : super(key: key);

  final Function() onpressed;
  final String buttonlabel;
  final Widget? buttonIdentifier;
  final double? width;
  final double? height;
  final double? borderRadius;
  final double? borderWidth;
  final double? elevation;
  final double? fontsize;
  final double? buttoncurve;
  final Color? buttoncolor;
  final Color? bordersidecolor;
  final TextStyle? textStyle;
  final Color? textcolor;
  final double? verticalPadding;
  final double? horizontalPadding;
  final bool allowSubmit;
  final bool overrideDefaultOnPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: allowSubmit
          ? onpressed
          : overrideDefaultOnPressed
              ? onpressed
              : () {},
      style: ElevatedButton.styleFrom(
        elevation: elevation ?? 0,
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding ?? 12,
          horizontal: horizontalPadding ?? 0,
        ),
        backgroundColor: buttoncolor ?? (allowSubmit ? primary : allowFalse),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 35),
          side: BorderSide(
            width: borderWidth ?? 1,
            color: bordersidecolor ?? (allowSubmit ? primary : allowFalse),
          ),
        ),
        fixedSize: Size(width ?? screenWidth(context),
            height ?? screenHeight(context) * 0.07),
      ),
      child: buttonIdentifier ??
          Center(
            child: Text(
              buttonlabel,
              style: textStyle ?? button,
            ),
          ),
    );
  }
}
