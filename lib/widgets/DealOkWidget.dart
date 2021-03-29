import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:eval_wire_frame/constants/dimens.dart';
import 'package:eval_wire_frame/constants/strings.dart';
import 'package:flutter/material.dart';
class DealOk extends StatefulWidget {
  @override
  _DealOkState createState() => _DealOkState();
}

class _DealOkState extends State<DealOk> {
  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      child: ExpansionTile(

        title: Text('Maruti Alto',style:AppFontStyle.appBarTittle(APP_BLACK_COLOR) ,),
        subtitle:  Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('LXI, 2015'),
              SizedBox(height: 6,),
              Text('1000KMS, Petrol',),
            ],
          ),
        ),
        trailing: Column(
          children: [
            Text('RS: 3.5 L',style: AppFontStyle.boldAppBarTitle(PRIMARY_COLOR),),
            SizedBox(height: 8,),
            Text('12 OCT 2020',style: AppFontStyle.regularTextStyle2(APP_BLACK_COLOR),)
          ],
        ),
        children: [
          SizedBox(height: LINE_HEIGHT,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Finalized Cost:',style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),),
              Text("RS: 3.5 L",style: AppFontStyle.labelTextStyle(PRIMARY_COLOR),)
            ],
          ),
          SizedBox(height: LINE_HEIGHT,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Evaluator',style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),),
              Text("View Details",style: AppFontStyle.labelTextStyle(PRIMARY_COLOR),)
            ],
          ),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle,color: APP_GREEN_COLOR,),
                    height: 50,
                    width: 50,
                    child: IconButton(icon: Icon(Icons.check,color: APP_WHITE_COLOR,),onPressed: (){
                      Navigator.pushNamed(context, SOURCE_NOW);
                    },),
                  ),
                  Text("Source now",style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),)
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle,color: PRIMARY_COLOR,),
                    height: 50,
                    width: 50,
                    child: Icon(Icons.apps_outlined,color: APP_WHITE_COLOR,),
                  ),
                  Text("View Details",style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),)
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blue,),
                    height: 50,
                    width: 50,
                    child: Icon(Icons.phone,color: APP_WHITE_COLOR,),
                  ),
                  Text("Call Customer",style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),)
                ],
              )
            ],
          ),
          SizedBox(height: LINE_HEIGHT,),

        ],


      ),
    );
  }
}
