import 'package:bookly_app/core/themes/colors/colors.dart';
import 'package:bookly_app/core/themes/colors/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'customize_app_bar.dart';
import 'feature_book_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomizeAppBar(),
            const FeatureBookListView(),
            Gap(50.h),
            const CustomHomeTextBestSeller()
          ],
        ),
      ),
    );
  }
}

class CustomHomeTextBestSeller extends StatelessWidget {
  const CustomHomeTextBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: 'Best ', style: Styles.fontSize25Bold),
          TextSpan(
            text: 'Seller',
            style: Styles.fontSize18SemiBold
                .copyWith(fontWeight: FontWeight.bold, color: kamberColor),
          ),
        ],
      ),
    );
  }
}
