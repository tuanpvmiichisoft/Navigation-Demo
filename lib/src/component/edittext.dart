import 'package:flutter/material.dart';

class EditText extends TextFormField {
  EditText(
      {@required String label,
        @required prefixIcon,
        @required  TextEditingController controller})
      : super(
    controller: controller,
    decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        labelText: label,
        border: OutlineInputBorder()),
  );
}