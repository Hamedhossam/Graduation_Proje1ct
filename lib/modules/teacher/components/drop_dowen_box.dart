import 'package:flutter/material.dart';

import '../../../shared/styles/color.dart';
import '../../../shared/styles/style.dart';

class DrobDownPart extends StatelessWidget {
  const DrobDownPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField<String>(
          decoration: const InputDecoration(
            labelText: 'Grades',
            labelStyle: Styles.styleBold18,
          ),
          style: Styles.styleBold18,
          items: ['Grade 1', 'Grade 2', 'Grade 4', 'Grade 5']
              .map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? value) {
            // Do something with the selected value
          },
        ),
        const SizedBox(height: defaultPadding),
        DropdownButtonFormField<String>(
          decoration: const InputDecoration(
            labelText: 'Class',
            labelStyle: Styles.styleBold18,
          ),
          style: Styles.styleBold18,
          items: ['Class 1', 'Class 2', 'Class 3', 'Class 4']
              .map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? value) {
            // Do something with the selected value
          },
        ),
        const SizedBox(height: defaultPadding),
        DropdownButtonFormField<String>(
          decoration: const InputDecoration(
            labelText: 'Subject',
            labelStyle: Styles.styleBold18,
          ),
          style: Styles.styleBold18,
          items: [ 'Arabic', 'religion']
              .map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? value) {
            // Do something with the selected value
          },
        ),
        const SizedBox(height: defaultPadding),
      ],
    );
  }
}
