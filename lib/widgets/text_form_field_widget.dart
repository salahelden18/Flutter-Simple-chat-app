import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget(
      {required this.controller,
      required this.prefixIcon,
      required this.text,
      this.textType,
      required this.validator,
      this.save,
      this.suffixIcon,
      this.isPass = false,
      super.key});

  final TextEditingController controller;
  final TextInputType? textType;
  final String? Function(String?)? validator;
  final String text;
  final IconData prefixIcon;
  final Function(String?)? save;
  final IconData? suffixIcon;
  final bool isPass;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: textType,
      validator: validator,
      obscureText: isPass,
      onSaved: save,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        label: Text(text),
        prefixIcon: Icon(prefixIcon),
        suffixIcon: Icon(suffixIcon),
      ),
    );
  }
}
