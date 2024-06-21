import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../shared/styles/style.dart';

Widget TecherDropdownButtonFormField({
  required String label,
  required var dropItems,
})=>DropdownButtonFormField<String>(
  decoration: InputDecoration(
    labelText: label,
    labelStyle: Styles.styleBold18,
  ),
  style: Styles.styleBold18,
  items:
  // ['Grade 5', 'Grade 6', 'Grade 7', 'Grade 8']
  dropItems.map((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList(),
  onChanged: (String? value) {
    // Do something with the selected value
  }
);