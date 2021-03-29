
import 'dart:io';

import 'package:eval_wire_frame/Provider/form_data_provider.dart';
import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Documents extends StatefulWidget {
  @override
  _DocumentsState createState() => _DocumentsState();
}

class _DocumentsState extends State<Documents> {
  @override
  Widget build(BuildContext context) {
    FormData formData=Provider.of(context);
    return Column(
      children: [
        Card(color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),side: BorderSide(width: 0.5)),
          child: Column(
            children: [
              ListTile(
                title: Text('RC BOOK'),
                trailing: IconButton(icon: Icon(Icons.upload_outlined), onPressed: ()async{
                  FilePickerResult result = await FilePicker.platform.pickFiles(
                    type: FileType.custom,
                    allowedExtensions: ["doc",'pdf'],
                  );

                  if(result != null) {
                    File file = File(result.files.single.path);
                  } else {
                    // User canceled the picker
                  }

                }),
                tileColor: Colors.white,
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
                  trailing: IconButton(icon: Icon(Icons.upload_outlined), onPressed: (){}),tileColor: Colors.white,
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
                  title: Text('Vehicle Photos - 8 Nos'),
                  trailing: IconButton(icon: Icon(Icons.upload_outlined), onPressed: (){}),tileColor: Colors.white,
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
                  title: Text('Pollution Certificate'),
                  trailing: IconButton(icon: Icon(Icons.upload_outlined), onPressed: (){}),tileColor: Colors.white,
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
                  trailing: IconButton(icon: Icon(Icons.upload_outlined), onPressed: (){}),tileColor: Colors.white,
                ),
                Divider(thickness: 1,indent: 10,endIndent: 10,),
                ListTile(
                  title: Text("No documents uploaded",style: AppFontStyle.labelTextStyle(APP_BLACK_COLOR),),
                )
              ],
            )
        ),
        SizedBox(height: 10,),
        GestureDetector(
          onTap: (){
            formData.activeStep = 13;
            formData.stepCount=13;
          },
          child: Container(
            height:60 ,
            width: 60,
            decoration: BoxDecoration(shape: BoxShape.circle,color: PRIMARY_COLOR,),
            child: Icon(Icons.arrow_forward_ios_outlined,color: APP_WHITE_COLOR,),
          ),
        )
      ],
    );
  }
}
