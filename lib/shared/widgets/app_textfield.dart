import 'package:flutter/material.dart';
import 'package:kit/core/extensions/context.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key, required this.controller, this.hintText,
    this.keyboardType = TextInputType.name,
    this.errorText,
  });

  final TextEditingController controller;
  final String? hintText;
  final TextInputType ? keyboardType;
  final String? errorText;


  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      decoration: InputDecoration(
        hintText: widget.hintText ?? 'Email',
        hintStyle: context.textStyle.bodyLarge?.copyWith(
          color: context.appTheme.textSubtle,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: context.appTheme.borderColor, width: 1),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: context.appTheme.primaryColor, width: 2),
        ),
        contentPadding: EdgeInsets.zero,
        
        errorStyle: context.textStyle.bodySmall?.copyWith(
          color: context.appTheme.errorColor,
        ),
        errorText: widget.errorText,
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: context.appTheme.errorColor, width: 1),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: context.appTheme.errorColor, width: 1),
        ),
      ),
    );
  }
}

