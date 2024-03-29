import 'package:eval_wire_frame/Provider/SteeringProvider.dart';
import 'package:eval_wire_frame/Provider/form_data_provider.dart';
import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/border.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

class SteeringSuspension extends StatefulWidget {
  @override
  _SteeringSuspensionState createState() => _SteeringSuspensionState();
}

class _SteeringSuspensionState extends State<SteeringSuspension> {
  TextEditingController _steeringCost = new TextEditingController();
  TextEditingController _suspensionCost = new TextEditingController();
  TextEditingController _brakeCost = new TextEditingController();
  TextEditingController _steeringComment = new TextEditingController();
  TextEditingController _suspensionComment = new TextEditingController();
  TextEditingController _brakeComment = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    SteeringProvider steeringProvider=Provider.of(context);
    FormData formData=Provider.of(context);
    return Column(
      children: [
        steering("Steering", steeringProvider, 'steering', _steeringCost, _steeringComment),
        SizedBox(height: 6,),
        steering("Suspension", steeringProvider, 'suspension', _suspensionCost, _suspensionComment),
        SizedBox(height: 6,),
        steering("Brake", steeringProvider, 'brake', _brakeCost, _brakeComment),
        SizedBox(height: 20,),
        Row(
          children: [
            Text('Rating:',style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),),
            SizedBox(width: 4,),
            ratingBar(steeringProvider),
          ],
        ),
        SizedBox(height: 10,),
        GestureDetector(
          onTap: (){
            formData.activeStep = 10;
            formData.stepCount=10;
          },
          child: Container(
            height:60 ,
            width: 60,
            decoration: BoxDecoration(shape: BoxShape.circle,color: PRIMARY_COLOR,),
            child: Icon(Icons.arrow_forward_ios_outlined,color: APP_WHITE_COLOR,),
          ),
        ),

      ],
    );
  }
  Widget steering(String text,
      SteeringProvider steeringProvider,
      String groupValue,
      TextEditingController controller1,
      TextEditingController controller2){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text("$text",style: AppFontStyle.regularTextStyle2(APP_BLACK_COLOR),)),
            Flexible(flex: 2,child: Row(
              children: [
                Radio(value: "Ok", groupValue: steeringProvider.steering[groupValue], onChanged: (val)=>steeringProvider.updateKey(groupValue, val),activeColor: PRIMARY_COLOR,),
                Text("Ok"),
                Radio(value: "Not Ok", groupValue: steeringProvider.steering[groupValue], onChanged: (val)=>steeringProvider.updateKey(groupValue, val),activeColor: PRIMARY_COLOR,),
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
  Widget ratingBar(SteeringProvider steeringProvider){
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
      onRatingUpdate: (rating)=>steeringProvider.rating=rating,
    );

  }
}
