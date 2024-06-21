import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scm/shared/styles/style.dart';
import '../../shared/styles/color.dart';
import 'components/primary_button.dart';
import 'new_password.dart';
class ConfirmScreen extends StatefulWidget {
  ConfirmScreen({super.key });

  @override
  _ConfirmScreenState createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends State<ConfirmScreen> {
  final TextEditingController _otpController = TextEditingController();

  String _obscuredText = '';

  @override
  void initState() {
    super.initState();
    _otpController.addListener(_updateObscuredText);
  }

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }


  void _updateObscuredText() {
    setState(() {
      // Update the displayed text with asterisks of the same length as the entered text
      _obscuredText = '*' * _otpController.text.length;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimarywhiteColor,
        body: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'OTP code',
                  style:Styles.style40,
                ),
                SizedBox(height: 3,),
                const Text(
                  'A message will be sent to your phone.',
                  style: Styles.styleGray15,
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: _otpController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [LengthLimitingTextInputFormatter(5)],
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: kPrimarywhiteColor,
                    hintText: _obscuredText.isNotEmpty ? _obscuredText : 'Enter the code',
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
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>NewPassword()));
                    },
                    child: const Text(
                      'Submit'
                      ,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
