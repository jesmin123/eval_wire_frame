import 'package:eval_wire_frame/Provider/ElectricalProvider.dart';
import 'package:eval_wire_frame/Provider/form_data_provider.dart';
import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/border.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
class Electricals extends StatefulWidget {
  @override
  _ElectricalsState createState() => _ElectricalsState();
}

class _ElectricalsState extends State<Electricals> {
  TextEditingController _powerWindowCost =new TextEditingController();
  TextEditingController _powerWindowComment =new TextEditingController();
  TextEditingController _instrumentCost =new TextEditingController();
  TextEditingController _airbagFeatureCost =new TextEditingController();
  TextEditingController _musicSystemCost =new TextEditingController();
  TextEditingController _leatherSeatCost =new TextEditingController();
  TextEditingController _fabricSeatCost =new TextEditingController();
  TextEditingController _sunRoofCost =new TextEditingController();
  TextEditingController _smAcCost =new TextEditingController();
  TextEditingController _absCost =new TextEditingController();
  TextEditingController _rdCost =new TextEditingController();
  TextEditingController _reverseCameraCost =new TextEditingController();
  TextEditingController _instrumentComment =new TextEditingController();
  TextEditingController _airbagFeatureComment =new TextEditingController();
  TextEditingController _musicSystemComment =new TextEditingController();
  TextEditingController _leatherSeatComment =new TextEditingController();
  TextEditingController _fabricSeatComment =new TextEditingController();
  TextEditingController _sunRoofComment =new TextEditingController();
  TextEditingController _reverseCameraComment =new TextEditingController();
  TextEditingController _smAcComment =new TextEditingController();
  TextEditingController _absComment =new TextEditingController();
  TextEditingController _rdComment =new TextEditingController();
  @override
  Widget build(BuildContext context) {
    FormData formData=Provider.of(context);
    ElectricProvider electricProvider=Provider.of(context);
    return Column(
      children: [
        Electrical("Power Windows", electricProvider, "powerWindows", _powerWindowCost, _powerWindowComment),
        SizedBox(height: 6,),
        Electrical("Instrument Cluster", electricProvider, "instrumentCluster", _instrumentCost, _instrumentComment),
        SizedBox(height: 6,),
        Electrical("Interior Condition", electricProvider, "interiorCondition", _powerWindowCost, _powerWindowComment),
        SizedBox(height: 6,),
        Electrical("Airbag Feature", electricProvider, "airbagFeature", _airbagFeatureCost, _airbagFeatureComment),
        SizedBox(height: 6,),
        Electrical("Music System", electricProvider, "musicSystem", _musicSystemCost, _musicSystemComment),
        SizedBox(height: 6,),
        Electrical("Leather Seat", electricProvider, "leatherSeat", _leatherSeatCost, _leatherSeatComment),
        SizedBox(height: 6,),
        Electrical("Fabric Seat", electricProvider, "fabricSeat", _fabricSeatCost, _fabricSeatComment),
        SizedBox(height: 6,),
        Electrical("Sun Roof", electricProvider, "sunRoof", _sunRoofCost, _sunRoofComment),
        SizedBox(height: 6,),
        Electrical("Reverse Camera", electricProvider, "reverseCamera", _reverseCameraCost, _reverseCameraComment),
        SizedBox(height: 6,),
        Electrical("Steering Mounted Audio Control", electricProvider, "smAc", _smAcCost, _smAcComment),
        SizedBox(height: 6,),
        Electrical("ABS", electricProvider, "abs", _absCost, _absComment),
        SizedBox(height: 6,),
        Electrical("Rear Defogger", electricProvider, "rd", _rdCost, _rdComment),
        SizedBox(height: 20,),
        Row(
          children: [
            Text('Rating:',style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),),
            SizedBox(width: 4,),
            ratingBar(electricProvider),
          ],
        ),
        SizedBox(height: 10,),
        GestureDetector(
          onTap: (){
            formData.activeStep = 8;
            formData.stepCount=8;
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
  Widget Electrical(String text,
      ElectricProvider electricProvider,
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
                Radio(value: "Ok", groupValue: electricProvider.electricRadio[groupValue], onChanged: (val)=>electricProvider.updateRadio(groupValue, val),activeColor: PRIMARY_COLOR,),
                Text("Ok"),
                Radio(value: "Not Ok", groupValue: electricProvider.electricRadio[groupValue], onChanged: (val)=>electricProvider.updateRadio(groupValue, val),activeColor: PRIMARY_COLOR,),
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
  Widget ratingBar(ElectricProvider electricProvider){
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
      onRatingUpdate: (rating)=>electricProvider.rating=rating,
    );

  }
}
