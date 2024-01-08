import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/themes/colors/styles.dart';

class RatingBook extends StatelessWidget {
  const RatingBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Icon(
        Icons.star,
        color: Color(0xffFFDD4F),
      ),
      Gap(6.3.w),
      Text('4.8', style: Styles.fontSize14Normal),
      Gap(5.w),
      Text('(245)', style: Styles.fontSize14Normal),
    ]);
  }
}
