import 'package:eval_wire_frame/Provider/EngineProvider.dart';
import 'package:eval_wire_frame/Provider/form_data_provider.dart';
import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/border.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';


class EngineTransmission extends StatefulWidget {
  @override
  _EngineTransmissionState createState() => _EngineTransmissionState();
}

class _EngineTransmissionState extends State<EngineTransmission> {
TextEditingController _engineCost = new TextEditingController();
TextEditingController _batteryCost = new TextEditingController();
TextEditingController _engineOilLevelCost = new TextEditingController();
TextEditingController _engineOilCost = new TextEditingController();
TextEditingController _coolantCost = new TextEditingController();
TextEditingController _emCost = new TextEditingController();
TextEditingController _esCost = new TextEditingController();
TextEditingController _epCost = new TextEditingController();
TextEditingController _acCost = new TextEditingController();
TextEditingController _ccCost = new TextEditingController();
TextEditingController _eSmokeCost = new TextEditingController();
TextEditingController _heaterCost = new TextEditingController();
TextEditingController _engineComment = new TextEditingController();
TextEditingController _batteryComment = new TextEditingController();
TextEditingController _engineOilLevelComment = new TextEditingController();
TextEditingController _engineOilComment = new TextEditingController();
TextEditingController _coolantComment = new TextEditingController();
TextEditingController _emComment = new TextEditingController();
TextEditingController _esComment = new TextEditingController();
TextEditingController _epComment = new TextEditingController();
TextEditingController _acComment = new TextEditingController();
TextEditingController _ccComment = new TextEditingController();
TextEditingController _eSmokeComment = new TextEditingController();
TextEditingController _heaterComment = new TextEditingController();
  @override
  Widget build(BuildContext context){
  EngineProvider engineProvider=Provider.of(context);
  FormData formData=Provider.of(context);
    return Column(
      children: [
      engine("Engine", engineProvider, "engine", _engineCost, _engineComment),
        SizedBox(height: 6,),
        engine("Battery", engineProvider, "battery", _batteryCost, _batteryComment),
        SizedBox(height: 6,),
        engine("Engine Oil Level Dipstick", engineProvider, "engineOilLevel", _engineOilLevelCost, _engineOilLevelComment),
        SizedBox(height: 6,),
        engine("Engine Oil", engineProvider, "engineOil", _engineOilCost, _engineOilComment),
        SizedBox(height: 6,),
        engine("Coolant", engineProvider, "coolant", _coolantCost, _coolantComment),
        SizedBox(height: 6,),
        engine("Engine Mounting", engineProvider, "em", _emCost, _emComment),
        SizedBox(height: 6,),
        engine("Engine Sound", engineProvider, "es", _esCost, _esComment),
        SizedBox(height: 6,),
        engine("Exhaust Smoke", engineProvider, "eSmoke", _eSmokeCost, _eSmokeComment),
        SizedBox(height: 6,),
        engine("Engine Permissible Blow By(Back Compression)", engineProvider, "ep", _epCost, _epComment),
        SizedBox(height: 6,),
        engine("AC Cooling", engineProvider, "ac", _acCost, _acComment),
        SizedBox(height: 6,),
        engine("Heater", engineProvider, "heater", _heaterCost, _heaterComment),
        SizedBox(height: 6,),
        engine("Climate Control AC", engineProvider, "cc", _ccCost, _ccComment),
        SizedBox(height: 20,),
        Row(
          children: [
            Text('Rating:',style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),),
            SizedBox(width: 4,),
            ratingBar(engineProvider),
          ],
        ),
        SizedBox(height: 10,),
        GestureDetector(
          onTap: (){
            formData.activeStep = 9;
            formData.stepCount=9;
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
Widget ratingBar(EngineProvider engineProvider){
  return RatingBar.builder(
    initialRating: 3,
    minRating: 1,
    direction: Axis.horizontal,
    allowHalfRating: true,
    itemCount: 5,
    itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
    itemBuilder: (context, _) => Icon(
      Icons.star,
      color: PRIMARY_COLOR,
    ),
    onRatingUpdate: (rating)=>engineProvider.rating=rating,
  );

}
}
