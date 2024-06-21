import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scm/Services/canteen_services.dart';
import 'package:scm/shared/styles/color.dart';
import 'package:scm/shared/styles/style.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';

class CanteenMainScreen extends StatefulWidget {
  const CanteenMainScreen({
    super.key,
  });

  @override
  State<CanteenMainScreen> createState() => _CanteenMainScreenState();
}

class _CanteenMainScreenState extends State<CanteenMainScreen> {
  final List<String> sections = [
    'Drinks',
    'Chips',
    'Cakes',
    // 'juice 🧃',
    // 'Sandwiches 🥪',
    // 'Cake 🍰',
    // 'Biscuts 🍪',
  ];
  int _selectedSection = 0;
  final List<bool> isBlocked = List.generate(70, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: kPrimarywhiteColor,
            size: 40,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: kPrimaryColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          ' Canteen',
          textAlign: TextAlign.center,
          style: Styles.style25white,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Text(
              textAlign: TextAlign.center,
              "Product Blocking Settings  🚫 Customize Access for Your Children",
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 22,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10),
            child: Text(
              "Choose category",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
                height: 0,
              ),
            ),
          ),
          // Section chips
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: sections
                  .asMap()
                  .entries
                  .map((entry) => GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedSection = entry.key;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Chip(
                            backgroundColor: _selectedSection == entry.key
                                ? kPrimaryColor
                                : Color.fromARGB(255, 235, 233, 233),
                            label: _selectedSection == entry.key
                                ? Text(
                                    entry.value,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                : Text(
                                    entry.value,
                                    style: const TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: 22,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, bottom: 5),
            child: Text(
              sections[_selectedSection],
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Inter',
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 1.7,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Products for the selected section

                  ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: Card(
                          color: kPrimaryLightColor,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const CircleAvatar(
                                  radius: 70,
                                  backgroundImage: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj8jG6wRlt4ftSCKawftxxgayByDUJG7W2JQ&s'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 5.0,
                                    right: 5,
                                    bottom: 5,
                                    top: 15,
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Orange Juice',
                                        style: const TextStyle(
                                            fontSize: 22,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.bold,
                                            color: kPrimaryColor),
                                      ),
                                      Container(
                                        width: 130,
                                        child: Text(
                                          '0.8 Sugar, 2.5 Blueberry Flavor',
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontFamily: 'Inter',
                                              color: kPrimaryColor),
                                        ),
                                        color: kPrimaryLightColor,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 40.0),
                                  child: Column(
                                    children: [
                                      Switch(
                                        value: isBlocked[
                                            index + (_selectedSection * 10)],
                                        onChanged: (value) {
                                          setState(() {
                                            isBlocked[index +
                                                    (_selectedSection * 10)] =
                                                value;
                                          });
                                        },
                                      ),
                                      const Text(
                                        'Block',
                                        style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.sizeOf(context).width / 5, top: 5),
            child: Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(15)),
              child: const Center(
                child: Text(
                  'Confirm',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}



// FutureBuilder(
//             future: services().getBloodRequests(),
//             builder: (context, snapshot) {
//               return (snapshot.data == null)
//                   ? const Center(
//                       child: Padding(
//                       padding: EdgeInsets.only(bottom: 10.0),
//                       child: SizedBox(
//                         height: 120,
//                         width: 120,
//                         child: CircularProgressIndicator(
//                           color: primaryColor,
//                           strokeWidth: 8,
//                         ),
//                       ),
//                     ))
//                   : ListView.builder(
//                       itemCount: snapshot.data!.length,
//                       itemBuilder: (context, index) {
//                         return RequestBloodWidget(
//                             bloodRequestModel: snapshot.data![index]);
//                       },
//                     );
//             },
//           )),
    