import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../custom/app_color.dart';

class ContactDetailsPage extends StatefulWidget {
  static const String routeName = '/contact_details';

  @override
  State<ContactDetailsPage> createState() => _ContactDetailsPageState();
}

class _ContactDetailsPageState extends State<ContactDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme_light,
        title: Text("Contact Details",
            style: TextStyle(fontSize: 21.sp, fontWeight: FontWeight.w700,)),
      ),
    );
  }
}
