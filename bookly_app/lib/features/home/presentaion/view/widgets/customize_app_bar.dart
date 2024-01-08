import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CustomizeAppBar extends StatelessWidget {
  const CustomizeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h, top: 8.h),
      child: Row(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                'assets/images/logo-splash-screen.svg',
                height: 60.h,
                width: 60.w,
              ),
              Gap(10.w),
              RichText(
                text: const TextSpan(children: [
                  TextSpan(
                      text: 'Bookly',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  TextSpan(
                    text: 'App',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.amber),
                  ),
                ]),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
