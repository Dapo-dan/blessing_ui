import 'package:blairsin/constants/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    required this.onTap,
    this.buttontext = '',
    this.buttonWidget,
    this.sizedimensionwidth,
    this.sizedimensionheight,
    this.alignGeometry,
    this.textcolor,
    this.padding,
    this.textstyle,
    Key? key,
    this.textsize,
  }) : super(key: key);
  final String buttontext;
  final Function() onTap;
  final Color? textcolor;
  final TextStyle? textstyle;
  final double? textsize;
  final Widget? buttonWidget;
  final double? sizedimensionheight;
  final double? sizedimensionwidth;
  final EdgeInsets? padding;
  final AlignmentGeometry? alignGeometry;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        padding: padding ?? EdgeInsets.zero,
        minimumSize: Size(sizedimensionwidth ?? 50, sizedimensionheight ?? 10),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        alignment: alignGeometry ?? Alignment.centerLeft,
      ),
      child: buttonWidget ??
          Text(buttontext, style: textstyle ?? caption),
    );
  }
}
