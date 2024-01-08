import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'customize_list_view_item.dart';

class FeatureBookListView extends StatelessWidget {
  const FeatureBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 8.w, top: 8.h),
            child: const FeatureListViewItem(),
          );
        },
      ),
    );
  }
}
