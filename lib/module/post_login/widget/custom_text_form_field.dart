import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mvc/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final String hintText;
  final String initialValue;
  final bool obscureText;
  final TextEditingController? controller;
  final Function(String value) onChanged;
  final bool keyboardType;

  const CustomTextFormField({
    Key? key,
    required this.title,
    required this.hintText,
    this.initialValue = "",
    this.obscureText = false,
    this.controller,
    required this.onChanged,
    this.keyboardType = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
          ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: kBlackColor,
            obscureText: obscureText,
            controller: controller,
            initialValue: initialValue,
            keyboardType: (keyboardType == true) ? TextInputType.number : null,
            inputFormatters: keyboardType == true
                ? [
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    FilteringTextInputFormatter.digitsOnly
                  ]
                : null,
            onChanged: (value) => onChanged(value),
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(
                  color: kPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
