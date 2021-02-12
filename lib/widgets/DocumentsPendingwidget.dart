import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
class DocumentsPendingWidget extends StatefulWidget {
  @override
  _DocumentsPendingWidgetState createState() => _DocumentsPendingWidgetState();
}

class _DocumentsPendingWidgetState extends State<DocumentsPendingWidget> {
  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ExpansionTile(

        title: Text('Maruti Alto',style:AppFontStyle.appBarTittle(APP_BLACK_COLOR) ,),
        subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('KL-05-336'),
              SizedBox(height: 6,),
              Text('Aby Thomas',),
              SizedBox(height: 4,),
              Text('Kaloor, Eranakulam',),]),
        trailing: Column(
          children: [
            SizedBox(height: 16,),
            Text("UPDATE DOCUMENTS NOW",style: AppFontStyle.titleAppBarStyle(PRIMARY_COLOR),),
          ],
        ),
        children: [
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Text('RC Book',style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),),
                  SizedBox(width: 4,),
                  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle,color: APP_GREEN_COLOR,),
                    height: 20,
                    width: 20,
                    child: Icon(Icons.check,color: APP_WHITE_COLOR,size: 15,),
                  ),
                ],
              ),

              SizedBox(width: 8,),
              Row(
                children: [
                  Text('Insurance',style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),),
                  SizedBox(width: 4,),
                  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle,color: PRIMARY_COLOR,),
                    height: 20,
                    width: 20,
                    child: Icon(Icons.close,color: APP_WHITE_COLOR,size: 15,),
                  ),
                ],
              ),

              SizedBox(width: 8,),
              Row(
                children: [
                  Text('Road Tax',style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),),
                  SizedBox(width: 4,),
                  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle,color: PRIMARY_COLOR,),
                    height: 20,
                    width: 20,
                    child: Icon(Icons.close,color: APP_WHITE_COLOR,size: 15,),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Text('Reselling',style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),),
                  SizedBox(width: 4,),
                  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle,color: PRIMARY_COLOR,),
                    height: 20,
                    width: 20,
                    child: Icon(Icons.close,color: APP_WHITE_COLOR,size: 15,),
                  ),
                ],
              ),
              Row(
                children: [
                  Text('Insurance',style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),),
                  SizedBox(width: 4,),
                  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle,color: PRIMARY_COLOR,),
                    height: 20,
                    width: 20,
                    child: Icon(Icons.close,color: APP_WHITE_COLOR,size: 15,),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Insurance',style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),),
              SizedBox(width: 4,),
              Container(
                decoration: BoxDecoration(shape: BoxShape.circle,color: PRIMARY_COLOR,),
                height: 20,
                width: 20,
                child: Icon(Icons.close,color: APP_WHITE_COLOR,size: 15,),
              ),
            ],
          ),
          SizedBox(height: 8,),

        ],




      ),
    );
  }
}
