import 'package:eval_wire_frame/Provider/EngineProvider.dart';
import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/border.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class EngineTransmission extends StatefulWidget {
  @override
  _EngineTransmissionState createState() => _EngineTransmissionState();
}

class _EngineTransmissionState extends State<EngineTransmission> {

  @override
  Widget build(BuildContext context){
  EngineProvider engineProvider=Provider.of(context);
    return Column(
      children: [

      ],
    );
  }
Widget engine(String text,
      EngineProvider engineProvider,
      String groupValue,
      TextEditingController controller1,
      TextEditingController controller2){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text("$text",style: AppFontStyle.regularTextStyle2(APP_BLACK_COLOR),)),
            Flexible(flex: 1,child: Row(
              children: [
                Radio(value: "Ok", groupValue: engineProvider.engine[groupValue], onChanged: (val)=>engineProvider.updateKey(groupValue, val),activeColor: PRIMARY_COLOR,),
                Text("Ok"),
                Radio(value: "Not Ok", groupValue: engineProvider.engine[groupValue], onChanged: (val)=>engineProvider.updateKey(groupValue, val),activeColor: PRIMARY_COLOR,),
                Text("Not Ok"),
              ],
            ))
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Cost:')),
              Flexible(flex: 1,child: TextFormField(
                controller: controller1,
                validator: (value) => value.isEmpty? 'this field is required' : null,
                decoration: FormBorder.myDecoration(),
                autofocus: false,
              ),)

            ],
          ),
        ),
        SizedBox(height: 6,),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Comment:')),
              Flexible(flex: 1,child: TextFormField(
                controller: controller2,
                validator: (value) => value.isEmpty? 'this field is required' : null,
                decoration: FormBorder.myDecoration(),
                autofocus: false,
              ),)

            ],
          ),
        ),
      ],
    );
  }
}
