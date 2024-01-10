import 'package:bookly_app/core/themes/colors/styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/presentaion/view/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentaion/view/widgets/rating_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/themes/colors/constants.dart';
import 'book_actions.dart';
import 'custom_book_details_app_bar.dart';
import 'similar_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 8.h),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: width * 0.2, vertical: 15.h),
            child: const CustomBookImage(),
          ),
          Gap(20.h),
          Text(
            'The Jungle Book',
            style: Styles.fontSize30Bold.copyWith(fontFamily: kinstrumentSerif),
          ),
          Gap(4.h),
          Opacity(
            opacity: 0.7,
            child: Text(
              'Rudyard Kipling',
              style:
                  Styles.fontSize16Medium.copyWith(fontStyle: FontStyle.italic),
            ),
          ),
          Gap(8.h),
          const RatingBook(mainAxisAlignment: MainAxisAlignment.center),
          Gap(20.h),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.0),
            child: BookAction(),
          ),
          Gap(40.h),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'You Can See Also:',
              style: Styles.fontSize14Normal.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Gap(10.h),
          const SimilarBooksListView(),
        ],
      ),
    );
  }
}
