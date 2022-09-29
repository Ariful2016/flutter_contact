import 'package:contact_latest/custom/app_color.dart';
import 'package:contact_latest/db/temp_db.dart';
import 'package:contact_latest/pages/contact_details_page.dart';
import 'package:contact_latest/pages/new_contact_page.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactPage extends StatefulWidget {
  static const String routeName = '/';

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme_light,
        title: Text("All Contact",
          style: TextStyle(fontSize: 21.sp, fontWeight: FontWeight.w700,)),
      ),
      body: ListView.builder(
          itemCount: contactList.length,
          itemBuilder: (context, index){
            final contact = contactList[index];
          return Container(
            height: 200.h,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: theme_light
                //borderRadius:
            ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: theme_dark,
                ),
                title: Text(contact.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 21.sp,
                    color: Colors.white
                  ) ,),
                subtitle: Text(contact.designation,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: Colors.white
                   ) ,),
                trailing: IconButton(
                  icon: Icon(Icons.favorite_border, color: Colors.red,),
                  onPressed: (){
                    Navigator.pushNamed(context, ContactDetailsPage.routeName);
                  },
                ),
              ));
          }),
     floatingActionButton: FloatingActionButton(
       onPressed: (){
        Navigator.pushNamed(context, NewContactPage.routeName);
       },
       child: Icon(Icons.add, color: Colors.white,),
     ),
    );
  }
}

