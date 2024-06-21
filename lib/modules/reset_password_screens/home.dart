import 'package:flutter/material.dart';
import 'package:scm/shared/styles/style.dart';
import '../../shared/styles/color.dart';
import 'confirm_screen.dart';


class ResetPasswordMainScreen extends StatelessWidget {
  const ResetPasswordMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Reset Password',
                    style: Styles.style40,
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Please enter your email address',
                    style: Styles.styleGray15,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: kPrimarywhiteColor,
                      hintText: 'Enter the Email',
                      hintStyle: const TextStyle(color: Colors.black12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: kPrimaryColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: kPrimaryColor),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ConfirmScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Next',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            )));
  }
}
