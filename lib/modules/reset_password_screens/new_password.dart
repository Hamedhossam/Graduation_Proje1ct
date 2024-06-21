import'package:flutter/material.dart';
import 'package:scm/shared/styles/style.dart';
import '../../shared/styles/color.dart';
import 'change.dart';
import 'components/primary_button.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool _obscureText = true;
  bool _obscureTextRe = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  void _toggleVisibilityRe() {
    setState(() {
      _obscureTextRe = !_obscureTextRe;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New Password',
              style:Styles.style40,
            ),
            SizedBox(height: 3,),
            const Text(
              'Please enter the new password. The number of characters must be at least 6, including lowercase and uppercase letters, at least a symbol and numbers.',
              style:Styles.styleGray15,
              maxLines: 6,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 15),
            TextField(
              obscureText: _obscureText,
             decoration: InputDecoration(
                 fillColor: kPrimarywhiteColor,
               hintText: 'Enter the new password',
               suffixStyle: const TextStyle(color: Colors.black12),
               border: const OutlineInputBorder(),
               suffixIcon: IconButton(
                 icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                 onPressed: _toggleVisibility,

             )),
                            ),
            SizedBox(height: 8,),
            TextField(
              obscureText: _obscureTextRe,
              decoration: InputDecoration(
                  fillColor: kPrimarywhiteColor,
                  hintText: 'Re-enter the password',suffixStyle: TextStyle(color: Colors.black12),
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(_obscureTextRe ? Icons.visibility : Icons.visibility_off),
                    onPressed: _toggleVisibilityRe,)

              ),
            ),
            SizedBox(height: 8,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ChangeScreen()));},
              child: const Text(
                'Confirm'
                ,
                style: TextStyle(fontSize: 18),
              ),
            )
          ],
        ),
      ),

    );
  }
}

