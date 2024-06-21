// import 'package:flutter/material.dart';
//
// import '../../../shared/styles/style.dart';
// import '../../receipt_screen/receipt_screen.dart';
//
// class LastTransactionWidget  extends StatelessWidget {
//   const LastTransactionWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return  ListView.separated(
//       shrinkWrap: true,
//       separatorBuilder: (context,index)=>SizedBox(height: 15,),
//       physics: const NeverScrollableScrollPhysics(),
//       // number of children
//       itemCount: 20, //collections.length,
//       itemBuilder: (BuildContext context, int index) {
//         return TextButton(
//           onPressed: (){
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => ReceiptScreen()));
//           },
//           child: Padding(
//             padding: const EdgeInsets.only(left: 20, right: 20,top: 20),
//             child: Stack(children: [
//               Container(
//                 width: double.infinity,
//                 height: 60,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10.0),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.white,
//                       offset: Offset(4.0, 4.0),
//                       spreadRadius: 1.0,
//                       blurRadius: 15,
//                     ),
//                     BoxShadow(
//                       color: Colors.grey.shade200,
//                       offset: Offset(-4.0, -4.0),
//                       spreadRadius: 1.0,
//                       blurRadius: 15,
//                     )
//                   ],
//                 ),
//               ),
//               Positioned(
//                   left: 10,
//                   top: 5,
//                   child: Text(
//                     'buying process from hasnaa',
//                     style: TextStyle(fontSize: 17),
//                   )),
//               Positioned(
//                   bottom: 8,
//                   left: 10,
//                   child: Row(
//                     children: [
//                       Text(
//                         'by cash',
//                         style: Styles.stylegray15,
//                       ),
//                       SizedBox(width: 15,),
//                       Text(
//                         '08/04/2001',
//                         style: TextStyle(color: Colors.grey.shade600,fontSize: 12),
//                       ),
//                     ],
//                   )),
//               Positioned(
//                   right: 10,
//                   top: 20,
//                   child: Text(
//                     '15.0 EGP',
//                     style:
//                     TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
//                   ))
//             ]),
//           ),
//         );
//       },
//     );
//   }
// }
