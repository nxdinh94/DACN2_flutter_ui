import 'package:flutter/material.dart';
import 'package:kit/core/extensions/context.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key, 
    required this.controller, 
    this.hintText,
    this.keyboardType = TextInputType.name,
    this.errorText,
    this.minLines,
    this.maxLines,
    this.border,
  });

  final TextEditingController controller;
  final String? hintText;
  final TextInputType ? keyboardType;
  final String? errorText;
  final int? minLines;
  final int? maxLines;
  final InputBorder ? border;


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
      minLines: widget.minLines,
      maxLines: widget.maxLines,
      decoration: InputDecoration(
        hintText: widget.hintText ?? 'Email',
        hintStyle: context.textStyle.bodyLarge?.copyWith(
          color: context.appTheme.textSubtle,
        ),
        enabledBorder: widget.border ?? UnderlineInputBorder(
          borderSide: BorderSide(color: context.appTheme.borderColor, width: 1),
        ),
        focusedBorder: widget.border ?? UnderlineInputBorder(
          borderSide: BorderSide(color: context.appTheme.secondaryColor, width: 2),
        ),
        contentPadding: EdgeInsets.zero,
        
        errorStyle: context.textStyle.bodySmall?.copyWith(
          color: context.appTheme.errorColor,
        ),
        errorText: widget.errorText,
        errorBorder: widget.border ?? UnderlineInputBorder(
          borderSide: BorderSide(color: context.appTheme.errorColor, width: 1),
        ),
        focusedErrorBorder: widget.border ?? UnderlineInputBorder(
          borderSide: BorderSide(color: context.appTheme.errorColor, width: 1),
        ),
      ),
    );
  }
}

