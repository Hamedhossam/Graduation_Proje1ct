import 'package:flutter/material.dart';
import 'package:scm/shared/styles/style.dart';

import '../../receipt_screen/receipt_screen.dart';


class LastTransactionWidget  extends StatelessWidget {
  const LastTransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context,index)=>SizedBox(height: 10,),
      physics: const NeverScrollableScrollPhysics(),
      // number of children
      itemCount: 10, //collections.length,
      itemBuilder: (BuildContext context, int index) {
        return MaterialButton(onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ReceiptScreen()));
        }, child: Container(
          width: double.infinity,
          height: 65,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                offset: Offset(4.0, 4.0),
                spreadRadius: 1.0,
                blurRadius: 15,
              ),
              BoxShadow(
                color: Colors.grey.shade200,
                offset: Offset(-4.0, -4.0),
                spreadRadius: 1.0,
                blurRadius: 15,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'buying process from hasnaa',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Spacer(),
                  Row(

                    children: [
                      Text(
                        'by cash',

                        style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        '08/04/2001',
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),
              Spacer(),
              Text(
                '15.0 EGP',
                style: Styles.styleBold15,
              )
            ],),
          ),
        ));
      },
    );
  }
}
