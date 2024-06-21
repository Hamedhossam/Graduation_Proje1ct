import 'package:flutter/material.dart';

import '../../../shared/styles/color.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150.0,
          decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [kPrimaryOldColor, kPrimaryLightColor]),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: defaultPadding),
          height: 250.0,
          child: Stack(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(
                    top: 60.0,
                    left: defaultPadding,
                    right: defaultPadding,
                    bottom: 10.0),
                child: Material(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  elevation: 5.0,
                  color: kPrimarywhiteColor,
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 40.0,
                      ),
                      //name of parent
                      Text(
                        "Ahmed Mohamed Elhefnawy",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(
                        height: 3.0,
                      ),
                      //name of the school
                      const Text(
                        "Maria Ozilea School",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      SizedBox(
                        height: 40.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            //balance in the all children
                            Expanded(
                              child: ListTile(
                                title: const Text(
                                  "300.50 EGP",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text("balance".toUpperCase(),
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(fontSize: 12.0)),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Material(
                      elevation: 5.0,
                      shape: const CircleBorder(),
                      child: CircleAvatar(
                        radius: 40.0,
                        //backgroundImage: Image(image: AssetImage("assets/images/girl.png"),) ,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
