import 'package:contact_latest/pages/contact_details_page.dart';
import 'package:contact_latest/pages/contact_page.dart';
import 'package:contact_latest/pages/new_contact_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411, 683),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(

          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.brown,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
         initialRoute: ContactPage.routeName,
          routes: {
            ContactPage.routeName : (context)=> ContactPage(),
            NewContactPage.routeName : (context)=> NewContactPage(),
            ContactDetailsPage.routeName : (context)=> ContactDetailsPage(),
          },
        );
      },
    );
  }
}

