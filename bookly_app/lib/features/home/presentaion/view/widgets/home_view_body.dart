import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'best_seller_list_view.dart';
import 'custom_text.dart';
import 'customize_app_bar.dart';
import 'feature_book_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomizeAppBar(),
              ),
              const FeatureBookListView(),
              Gap(40.h),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomHomeTextBestSeller(),
              ),
              Gap(15.h),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: BestSillerListView(),
          ),
        )
      ],
    );
  }
}
