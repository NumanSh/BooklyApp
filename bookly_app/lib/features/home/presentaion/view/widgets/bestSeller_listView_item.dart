import 'package:bookly_app/core/themes/colors/constants.dart';
import 'package:bookly_app/core/themes/colors/styles.dart';
import 'package:bookly_app/features/book/presentaion/view/book_details_view.dart';
import 'package:bookly_app/features/home/presentaion/view/widgets/rating_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const BookDetailsView());
      },
      child: SizedBox(
        height: 125.h,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/Image.png',
                    ),
                  ),
                ),
              ),
            ),
            Gap(30.w),
            Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Harry Potter And The Goblet Of the Fire',
                      style: Styles.fontSize22Normal
                          .copyWith(fontFamily: kinstrumentSerif),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Gap(3.h),
                    Text('J. K. Rowling', style: Styles.fontSize14Normal),
                    Gap(3.h),
                    Row(
                      children: [
                        Text(
                          '19.99\$',
                          style: Styles.fontSize22Normal.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        const RatingBook(),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
