import 'package:flutter/material.dart';

import '../../../shared/styles/style.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget(
      {super.key,
      required this.itemName,
      required this.numberPcs,
      required this.priceOfOne,
      required this.priceOfPcs});

  final String itemName, numberPcs, priceOfOne, priceOfPcs;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) => SizedBox(
        height: 15,
      ),
      physics: const NeverScrollableScrollPhysics(),
      // number of children
      itemCount: 15, //collections.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(itemName),
            Row(
              children: [
                Expanded(
                    child: Text(
                  '$numberPcs pcs',
                  style: Styles.stylegray15,
                )),
                Expanded(
                    child: Text(
                  priceOfOne,
                  style: Styles.stylegray15,
                )),
                Text(
                  priceOfPcs,
                  style: Styles.styleBold15,
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
