import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class NewContactPage extends StatefulWidget {
  static const String routeName = '/new_contact';

  @override
  State<NewContactPage> createState() => _NewContactPageState();
}

class _NewContactPageState extends State<NewContactPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Contact',
          style: TextStyle(fontSize: 21.sp, fontWeight: FontWeight.w700),),
      ),
    );
  }
}
