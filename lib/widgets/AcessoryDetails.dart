import 'package:eval_wire_frame/Provider/AccessoryProvider.dart';
import 'package:eval_wire_frame/Provider/form_data_provider.dart';
import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/border.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

class AccessoryDetails extends StatefulWidget {
  @override
  _AccessoryDetailsState createState() => _AccessoryDetailsState();
}

class _AccessoryDetailsState extends State<AccessoryDetails> {
  TextEditingController _accessoryName1 = new TextEditingController();
  TextEditingController _accessoryCost1 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    FormData formData=Provider.of(context);
    AccessoryProvider accessoryProvider=Provider.of(context);
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text('Accessory Name:')),
            Flexible(flex: 1,child: TextFormField(
               controller: _accessoryName1,

              validator: (value) => value.isEmpty ? 'this field is required' : null,
              decoration: FormBorder.myDecoration(),
              autofocus: false,
            ),)

          ],
        ),
        SizedBox(height: 6,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text('Cost:')),
            Flexible(flex: 1,child: TextFormField(
              controller: _accessoryCost1,
              validator: (value) => value.isEmpty ? 'this field is required' : null,
              decoration: FormBorder.myDecoration(),
              autofocus: false,
            ),)

          ],
        ),
        SizedBox(height: 6,),
        Column(
          children: accessoryProvider.list.map((e) => Column(
            children: [
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text("$e")),
                  Flexible(flex: 1,child: TextFormField(
                    controller: _accessoryName1,

                    validator: (value) => value.isEmpty ? 'this field is required' : null,
                    decoration: FormBorder.myDecoration(),
                    autofocus: false,
                  ),)

                ],
              ),
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text('Cost:')),
                  Flexible(flex: 1,child: TextFormField(
                    controller: _accessoryCost1,
                    validator: (value) => value.isEmpty ? 'this field is required' : null,
                    decoration: FormBorder.myDecoration(),
                    autofocus: false,
                  ),)

                ],
              ),
            ],
          )).toList()
    ,
        ),
        SizedBox(height: 6,),
        GestureDetector(
          onTap: (){
            accessoryProvider.addNewItem("Accessory Name");


          },
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(15.0),color: PRIMARY_COLOR),
              child: Icon(Icons.add,size: 30,color: APP_WHITE_COLOR,),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Column(
          children: [
            Text('Overall Rating:',style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),),
            SizedBox(height: 4,),
            ratingBar(accessoryProvider),
          ],
        ),
        SizedBox(height: 20,),
        GestureDetector(
          onTap: (){
            formData.activeStep = 12;
            formData.stepCount=12;
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
  Widget ratingBar(AccessoryProvider accessoryProvider){
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
      onRatingUpdate: (rating)=>accessoryProvider.rating=rating,
    );
}

}
