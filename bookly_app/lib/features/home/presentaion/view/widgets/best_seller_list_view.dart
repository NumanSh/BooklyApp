import 'package:flutter/material.dart';

import 'best_seller_listView_item.dart';

class BestSillerListView extends StatelessWidget {
  const BestSillerListView({super.key});

  @override
  Widget build(BuildContext context) {
    //dont forget to add expanded in listview
    return ListView.builder(
      itemCount: 10,
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: BookListViewItem(),
        );
      },
    );
  }
}
