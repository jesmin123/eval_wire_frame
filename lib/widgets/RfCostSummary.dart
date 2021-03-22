import 'package:eval_wire_frame/Provider/form_data_provider.dart';
import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/border.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class RfCost extends StatefulWidget {
  @override
  _RfCostState createState() => _RfCostState();
}

class _RfCostState extends State<RfCost> {
  TextEditingController _satndardPeriodic = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    FormData formData=Provider.of(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text('Exterior + Tyres RF Cost:',)),
            Flexible(flex: 1,child: Text("Rs: 16,000"))
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text('Interior + Electricals RF Cost:')),
            Flexible(flex: 1,child: Text("Rs: 16,000"))
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text('Engine + Transmission + AC RF Cost:')),
            Flexible(flex: 1,child: Text("Rs: 16,000"))
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text('Steering + Suspension + Brakes RF Cost:')),
            Flexible(flex: 1,child: Text("Rs: 16,000"))
          ],
        ),
        SizedBox(height: 10,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text('Standard Periodic Service RF Cost:')),
            Flexible(flex: 1,child: TextFormField(
              controller: _satndardPeriodic,
              validator: (value) => value.isEmpty ? 'this field is required' : null,
              decoration: FormBorder.myDecoration(),
              autofocus: false,
            ),)

          ],
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(flex: 1,child: Text('Total:',style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),)),
            Flexible(flex: 1,child: Text("Rs: 16,000",style: AppFontStyle.appBarTittle(APP_BLACK_COLOR)))
          ],
        ),
        SizedBox(height: 20,),
        GestureDetector(
          onTap: (){
            formData.activeStep = 11;
            formData.stepCount=11;
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
