
import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:flutter/material.dart';

class Documents extends StatefulWidget {
  @override
  _DocumentsState createState() => _DocumentsState();
}

class _DocumentsState extends State<Documents> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),side: BorderSide(width: 0.5)),
          child: Column(
            children: [
              ListTile(
                title: Text('RC BOOK'),
                trailing: Icon(Icons.upload_outlined),tileColor: Colors.white,
              ),
              Divider(thickness: 1,indent: 10,endIndent: 10,),
              ListTile(
                title: Text("No documents uploaded",style: AppFontStyle.labelTextStyle(APP_BLACK_COLOR),),
              )
            ],
          )
        ),
        SizedBox(height: 6,),
        Card(color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),side: BorderSide(width: 0.5)),
            child: Column(
              children: [
                ListTile(
                  title: Text('Insurance'),
                  trailing: Icon(Icons.upload_outlined),tileColor: Colors.white,
                ),
                Divider(thickness: 1,indent: 10,endIndent: 10,),
                ListTile(
                  title: Text("No documents uploaded",style: AppFontStyle.labelTextStyle(APP_BLACK_COLOR),),
                )
              ],
            )
        ),
        SizedBox(height: 6,),
        Card(color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),side: BorderSide(width: 0.5)),
            child: Column(
              children: [
                ListTile(
                  title: Text('Vehicle Photos-8 Nos'),
                  trailing: Icon(Icons.upload_outlined),tileColor: Colors.white,
                ),
                Divider(thickness: 1,indent: 10,endIndent: 10,),
                ListTile(
                  title: Text("No documents uploaded",style: AppFontStyle.labelTextStyle(APP_BLACK_COLOR),),
                )
              ],
            )
        ),
        SizedBox(height: 6,),
        Card(color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),side: BorderSide(width: 0.5)),
            child: Column(
              children: [
                ListTile(
                  title: Text('Pollution Free'),
                  trailing: Icon(Icons.upload_outlined),tileColor: Colors.white,
                ),
                Divider(thickness: 1,indent: 10,endIndent: 10,),
                ListTile(
                  title: Text("No documents uploaded",style: AppFontStyle.labelTextStyle(APP_BLACK_COLOR),),
                )
              ],
            )
        ),
        SizedBox(height: 6,),
        Card(color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),side: BorderSide(width: 0.5)),
            child: Column(
              children: [
                ListTile(
                  title: Text('Vin Plate'),
                  trailing: Icon(Icons.upload_outlined),tileColor: Colors.white,
                ),
                Divider(thickness: 1,indent: 10,endIndent: 10,),
                ListTile(
                  title: Text("No documents uploaded",style: AppFontStyle.labelTextStyle(APP_BLACK_COLOR),),
                )
              ],
            )
        ),
        SizedBox(height: 6,),
      ],
    );
  }
}
