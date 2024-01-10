import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/themes/colors/styles.dart';

class RatingBook extends StatelessWidget {
  const RatingBook(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          Icons.star,
          color: Color(0xffFFDD4F),
        ),
        Gap(6.3.w),
        Text('4.8', style: Styles.fontSize16Medium),
        Gap(6.3.w),
        Opacity(
            opacity: 0.6, child: Text('(245)', style: Styles.fontSize14Normal)),
      ],
    );
  }
}
