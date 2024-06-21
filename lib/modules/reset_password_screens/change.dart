import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scm/modules/login/login_screen.dart';
import 'package:scm/shared/styles/color.dart';
class ChangeScreen extends StatelessWidget {
  const ChangeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Expanded(flex: 10,
              child: Container(
                alignment: Alignment.center,
                child: const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('You`ve changed your password!',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                  ),
                ),

              ),
            ),
            Expanded(
              flex: 1,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));},
                child: const Text(
                  'Login'
                  ,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
