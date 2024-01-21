import 'package:bookly_app/core/themes/colors/constants.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

import 'features/home/domain/entities/book_entity.dart';

void main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox(kfeaturedBox);
  await Hive.openBox(knewestBox);
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kprimaryColor,
          //اللون بكون مبني على اللايت مود عشان احل المشكلة بعمل  السطر الي جاي
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
        home: const SplashView(),
      ),
    );
  }
}
//ملاحظة مهمة وين بتلاقي ليست فيو حط فوقها اكسبانديد


// ملاحظة مهمة
// استعملنا اكشتنن لتحويل الجيسون للدارت 
// عن طريق نسخ ملف الجيسون وبضغط على كونترل شفت بي
// بختار بعدها json to dart from clipboard