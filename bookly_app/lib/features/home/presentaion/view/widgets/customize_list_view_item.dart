import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeatureListViewItem extends StatelessWidget {
  const FeatureListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.r),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'assets/images/Image.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
