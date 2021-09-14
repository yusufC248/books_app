import 'package:flutter/material.dart';

class WidgetTextFormField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final TextInputType inputType;
  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  final int maxLines;

  const WidgetTextFormField({Key key, this.hintText, this.labelText, this.inputType, this.controller, this.validator, this.maxLines}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: this.controller,
      keyboardType: this.inputType,
      maxLines: this.maxLines,
      decoration: InputDecoration(
        hintText: this.hintText,
        labelText: this.labelText,
        border: OutlineInputBorder(),
      ),
      validator: this.validator,
    );
  }
}

String validateKosong(String value){
  if(value.isEmpty){
    return "$value Harus diisi";
  }
}
