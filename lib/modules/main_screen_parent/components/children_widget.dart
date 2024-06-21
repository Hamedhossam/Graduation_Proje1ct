import 'package:flutter/material.dart';
import 'package:scm/shared/styles/style.dart';

import '../../main_screen_child/main_screen_child.dart';

class ChildrenWidget  extends StatelessWidget {
  const ChildrenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      // number of children
      itemCount: 2, //collections.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.symmetric(
              vertical: 5.0, horizontal: 10.0),
          height: 80.0,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MainScreenChild()));
            },
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                // Image.asset("assets/images/girl.png"),
                Material(
                  elevation: 5.0,
                  shape: const CircleBorder(),
                  child: CircleAvatar(
                    radius: 32.0,
                    //backgroundImage: Image(image: AssetImage("assets/images/girl.png"),) ,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 160,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hasnaa Ahmed elhefnawy',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Spacer(),
                        Text('Grade 5')
                      ],
                    ),
                  ),
                ),
                Spacer(),
                // the balance here
                Text(
                  '150 LE',
                  style:Styles.styleBoldwhite15,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
