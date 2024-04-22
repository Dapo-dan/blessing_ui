import 'package:blairsin/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextInputField extends StatefulWidget {
  const CustomTextInputField({
    this.ispassword = false,
    this.fieldlabel,
    this.maxlines,
    this.textinputtype,
    this.maxlength,
    this.isNameField = false,
    this.topmargin,
    this.verticalContent = 8,
    this.controller,
    this.onChanged,
    this.isEnabled,
    this.autofocus,
    this.labelText,
    this.errorText,
    this.labelTextStyle,
    this.labelTextWidget,
    this.textCapitalization,
    Key? key,
    this.textInputAction,
    this.leftmargin,
  }) : super(key: key);
  final Function(String value)? onChanged;
  final bool ispassword;
  final bool? isEnabled;
  final String? fieldlabel;
  final TextInputType? textinputtype;
  final int? maxlines;
  final int? maxlength;
  final double? topmargin;
  final double? leftmargin;
  final double verticalContent;
  final TextInputAction? textInputAction;
  final bool? autofocus;
  final TextEditingController? controller;
  final TextCapitalization? textCapitalization;
  final bool isNameField;
  final String? errorText;
  final String? labelText;
  final TextStyle? labelTextStyle;
  final Widget? labelTextWidget;
  @override
  State<CustomTextInputField> createState() => _CustomTextInputFieldState();
}

class _CustomTextInputFieldState extends State<CustomTextInputField> {
  bool showpassword = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: widget.autofocus ?? false,
      enabled: widget.isEnabled,
      maxLines: widget.maxlines ?? 1,
      maxLength: widget.maxlength,
      controller: widget.controller,
      textInputAction: widget.textInputAction,
      onChanged: widget.onChanged ?? (value) {},
      obscureText: widget.ispassword ? showpassword : false,
      keyboardType: widget.textinputtype ?? TextInputType.text,
      inputFormatters: widget.isNameField
          ? [
              FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
            ]
          : [],
      textCapitalization: widget.textCapitalization ?? TextCapitalization.none,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFCF0FFF).withOpacity(0.1),
        contentPadding: EdgeInsets.symmetric(
            horizontal: 15, vertical: widget.verticalContent),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(40),
        ),
        errorText: widget.errorText,
        suffixIcon: widget.ispassword
            ? IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                iconSize: 20,
                onPressed: () {
                  setState(() {
                    showpassword = !showpassword;
                  });
                },
                icon: Icon(
                  showpassword ? Icons.visibility_off : Icons.visibility,
                  color: secondary6,
                ),
              )
            : const SizedBox(),
        // hintText: widget.fieldlabel ?? '',
        // hintStyle: TextStyles.hint,
      ),
    );
  }
}
