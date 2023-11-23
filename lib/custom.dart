import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final Function(String) onchangedFunction;
  final bool obscureTexthehe;
  final String? initialValue;
  final String? errorTexi;
  const CustomTextField({
    super.key, required this.hintText, this.prefixWidget, required this.onchangedFunction, required this.obscureTexthehe, this.initialValue, this.suffixWidget, this.errorTexi,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:20.0,left: 20,right: 20),
      child: TextField(
        obscureText: obscureTexthehe,
        onChanged: onchangedFunction,
        controller: TextEditingController(text: initialValue),
        decoration: InputDecoration(
          errorText: errorTexi,
          suffixIcon: suffixWidget,
          prefixIcon: prefixWidget,
          hintText: hintText,
          hintStyle: TextStyle(
            fontFamily: "Poppins",
            fontSize: 17,
            color: Color(0xFF17203A),
          ),
          filled: true,
          fillColor: Color(0xffFBFBFB),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xffFBFBFB)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xffe6f1f7),width: 2.5),
          ),
          contentPadding: const EdgeInsets.all(15),
        ),
        style: TextStyle(
          fontFamily: "Poppins",
          fontSize: 17,
          color: Color(0xFF17203A),
        ),
      ),
    );
  }
}