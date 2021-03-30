import 'package:eval_wire_frame/Provider/EvaluationDetailProvider.dart';
import 'package:eval_wire_frame/constants/border.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
class EvaluationDetails extends StatefulWidget {
  @override
  _EvaluationDetailsState createState() => _EvaluationDetailsState();
}

class _EvaluationDetailsState extends State<EvaluationDetails> {

  TextEditingController _expectedPrice= new TextEditingController();
  TextEditingController _quotedPrice= new TextEditingController();
  TextEditingController _reason= new TextEditingController();
  TextEditingController _comment= new TextEditingController();
  @override
  Widget build(BuildContext context) {
    EvaluationDetailProvider evaluationDetailProvider=Provider.of(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text("Quality")),
            Flexible(flex: 3,child: Row(
              children: [
                Radio(value: "A", groupValue: evaluationDetailProvider.quality, onChanged: (val)=>evaluationDetailProvider.quality=val,activeColor: PRIMARY_COLOR,),
                Text("A"),
                Radio(value: "B", groupValue: evaluationDetailProvider.quality, onChanged: (val)=>evaluationDetailProvider.quality=val,activeColor: PRIMARY_COLOR),
                Text("B"),
                Radio(value: "C", groupValue: evaluationDetailProvider.quality, onChanged: (val)=>evaluationDetailProvider.quality=val,activeColor: PRIMARY_COLOR),
                Text("C"),


              ],
            )),
           ]),
        Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(flex: 1,child: Text('Expected Price')),
                Flexible(flex: 2,child: TextFormField(
                  controller: _expectedPrice,
                  validator: (value) => value.isEmpty? 'this field is required' : null,
                  decoration: FormBorder.myDecoration(),
                  autofocus: false,
                  keyboardType: TextInputType.number,
                ),)

              ],
            ),
        SizedBox(height: 6,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text('Quoted Price')),
            Flexible(flex: 2,child: TextFormField(
              controller: _quotedPrice,
              validator: (value) => value.isEmpty? 'this field is required' : null,
              decoration: FormBorder.myDecoration(),
              autofocus: false,
              keyboardType: TextInputType.number,
            ),)

          ],
        ),
        SizedBox(height: 6,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text('Vehicle Category')),
            Flexible(flex: 2,child:DropdownButtonFormField(
                decoration: FormBorder.myDecoration(),
              items: [
                DropdownMenuItem(child: Text("Sedan"),value: "Sedan",),
                DropdownMenuItem(child: Text("Van"),value: "Van",),
                DropdownMenuItem(child: Text("Hatchback"),value: "Hatchback",),
                DropdownMenuItem(child: Text("SUV"),value: "SUV",),
                DropdownMenuItem(child: Text("MUV"),value: "MUV",)
              ],onChanged: (val)=>evaluationDetailProvider.vehicleCategory=val,
            ),)

          ],
        ),
        SizedBox(height: 6,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text('Reason for NTV')),
            Flexible(flex: 2,child: TextFormField(
              controller: _reason,
              validator: (value) => value.isEmpty? 'this field is required' : null,
              decoration: FormBorder.myDecoration(),
              autofocus: false,

            ),)

          ],
        ),
        SizedBox(height: 6,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text('Comment')),
            Flexible(flex: 2,child: TextFormField(
              controller: _comment,
              validator: (value) => value.isEmpty? 'this field is required' : null,
              decoration: FormBorder.myDecoration(),
              autofocus: false,

            ),)

          ],
        ),
        SizedBox(height: 6,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text('Follow Up')),
            Flexible(flex: 2,child:DropdownButtonFormField(
              decoration: FormBorder.myDecoration(),
              items: [
                DropdownMenuItem(child: Text("Postponed"),value: "Postponed",),
                DropdownMenuItem(child: Text("Dropped"),value: "Dropped",),
                DropdownMenuItem(child: Text("Deal Ok"),value: "Deal Ok",),
                DropdownMenuItem(child: Text("Negotiation"),value: "Under Negotiation",),
              ],onChanged: (val)=>evaluationDetailProvider.followUp=val,
            ),)

          ],
        ),
        SizedBox(height: 20,),
        Column(
          children: [
             Text('Overall Rating:'),
             SizedBox(width: 6,),
             ratingBar(evaluationDetailProvider)
          ],
        ),
        SizedBox(height: 10,),
        GestureDetector(
          onTap: (){

          },
          child: Container(
            height:60 ,
            width: 60,
            decoration: BoxDecoration(shape: BoxShape.circle,color: PRIMARY_COLOR,),
            child: Icon(Icons.check,color: APP_WHITE_COLOR,),
          ),
        )

  ]
    );
  }
  Widget ratingBar(EvaluationDetailProvider evaluationDetailProvider){
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
      onRatingUpdate: (rating)=>evaluationDetailProvider.overallrating=rating,
    );

  }
}
