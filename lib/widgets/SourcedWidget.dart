import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:flutter/material.dart';

class SourcedWidget extends StatefulWidget {
  @override
  _SourcedWidgetState createState() => _SourcedWidgetState();
}

class _SourcedWidgetState extends State<SourcedWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        child:ClipPath(
          clipper: ShapeBorderClipper(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          child: Container(
            decoration: BoxDecoration(
                border: Border(left: BorderSide(color: PRIMARY_COLOR,width: 15,))
            ),
            child: ListTile(
              title: Text('Maruti Alto',style:AppFontStyle.appBarTittle(APP_BLACK_COLOR) ,),

              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('KL-05-336'),
                  SizedBox(height: 6,),
                  Text('Aby Thomas',),
                  SizedBox(height: 4,),
                  Text('Kaloor, Eranakulam',),
                ],
              ),
              trailing: Column(
                children: [
                  Text("RS: 2.5L",style: AppFontStyle.bodyTextStyle(PRIMARY_COLOR),),
                  Text("Sourced on:",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),),
                  Text("12 DEC 2020",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),),
                  Text('View Documents',style: AppFontStyle.bodyTextStyle(PRIMARY_COLOR),)

                ],
              ),
            ),
          ),

        )
    );
  }
}
