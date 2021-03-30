import 'package:eval_wire_frame/Provider/ExteriorTyresProvider.dart';
import 'package:eval_wire_frame/Provider/form_data_provider.dart';
import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/border.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
class ExteriorTyres extends StatefulWidget {
  @override
  _ExteriorTyresState createState() => _ExteriorTyresState();
}

class _ExteriorTyresState extends State<ExteriorTyres> {
  TextEditingController _bumperFrontCost =new TextEditingController();
  TextEditingController _bumperRearCost =new TextEditingController();
  TextEditingController _bumperBonnetCost =new TextEditingController();
  TextEditingController _bumperRoofCost =new TextEditingController();
  TextEditingController _fenderLCost =new TextEditingController();
  TextEditingController _fenderRCost =new TextEditingController();
  TextEditingController _doorLhsFrontCost =new TextEditingController();
  TextEditingController _doorLhsRearCost =new TextEditingController();
  TextEditingController _doorRhsFrontCost =new TextEditingController();
  TextEditingController _doorRhsRearCost =new TextEditingController();
  TextEditingController _runningLhsCost =new TextEditingController();
  TextEditingController _runningRhsCost =new TextEditingController();
  TextEditingController _batteryMake =new TextEditingController();
  TextEditingController _batteryWarranty =new TextEditingController();
  TextEditingController _batteryComment =new TextEditingController();
  TextEditingController _pillarComment =new TextEditingController();
  TextEditingController _pillarCost =new TextEditingController();
  TextEditingController _bumperFrontComment =new TextEditingController();
  TextEditingController _bumperRearComment =new TextEditingController();
  TextEditingController _bumperBonnetComment =new TextEditingController();
  TextEditingController _bumperRoofComment =new TextEditingController();
  TextEditingController _fenderLComment =new TextEditingController();
  TextEditingController _fenderRComment =new TextEditingController();
  TextEditingController _doorLhsFrontComment =new TextEditingController();
  TextEditingController _doorLhsRearComment =new TextEditingController();
  TextEditingController _doorRhsFrontComment =new TextEditingController();
  TextEditingController _doorRhsRearComment =new TextEditingController();
  TextEditingController _runningLhsComment =new TextEditingController();
  TextEditingController _runningRhsComment =new TextEditingController();
  TextEditingController _quarterLhsComment =new TextEditingController();
  TextEditingController _quarterRhsComment =new TextEditingController();
  TextEditingController _quarterLhsCost =new TextEditingController();
  TextEditingController _quarterRhsCost =new TextEditingController();
  TextEditingController _dickeyDoorCost =new TextEditingController();
  TextEditingController _bootFloorCost =new TextEditingController();
  TextEditingController _firewallCost =new TextEditingController();
  TextEditingController _apronCost =new TextEditingController();
  TextEditingController _cowlTopCost =new TextEditingController();
  TextEditingController _lowerCrossCost =new TextEditingController();
  TextEditingController _upperCrossCost =new TextEditingController();
  TextEditingController _headlightCost =new TextEditingController();
  TextEditingController _radiatorCost =new TextEditingController();
  TextEditingController _QRVMLHSCost =new TextEditingController();
  TextEditingController _QRVMRHSCost =new TextEditingController();
  TextEditingController _lightLhsFogCost =new TextEditingController();
  TextEditingController _lightRhsFogCost =new TextEditingController();
  TextEditingController _lightLhsHeadCost =new TextEditingController();
  TextEditingController _lightRhsHeadCost =new TextEditingController();
  TextEditingController _lightLhsTailCost =new TextEditingController();
  TextEditingController _lightRhsTailCost =new TextEditingController();
  TextEditingController _rearCombinationCost =new TextEditingController();
  TextEditingController _indicatorCost =new TextEditingController();
  TextEditingController _alloyWheelCost =new TextEditingController();
  TextEditingController _rimCost =new TextEditingController();

  TextEditingController _windshieldFrontCost =new TextEditingController();
  TextEditingController _windshieldRearCost =new TextEditingController();
  TextEditingController _dickeyDoorComment =new TextEditingController();
  TextEditingController _bootFloorComment =new TextEditingController();
  TextEditingController _firewallComment =new TextEditingController();
  TextEditingController _apronComment =new TextEditingController();
  TextEditingController _cowlTopComment =new TextEditingController();
  TextEditingController _lowerCrossComment =new TextEditingController();
  TextEditingController _upperCrossComment =new TextEditingController();
  TextEditingController _headlightComment =new TextEditingController();
  TextEditingController _radiatorComment =new TextEditingController();
  TextEditingController _QRVMLHSComment =new TextEditingController();
  TextEditingController _QRVMRHSComment =new TextEditingController();
  TextEditingController _windshieldFrontComment =new TextEditingController();
  TextEditingController _windshieldRearComment =new TextEditingController();
  TextEditingController _lightLhsFogComment =new TextEditingController();
  TextEditingController _lightRhsFogComment =new TextEditingController();
  TextEditingController _lightLhsHeadComment =new TextEditingController();
  TextEditingController _lightRhsHeadComment =new TextEditingController();
  TextEditingController _lightLhsTailComment =new TextEditingController();
  TextEditingController _lightRhsTailComment =new TextEditingController();
  TextEditingController _rearCombinationComment =new TextEditingController();
  TextEditingController _indicatorComment =new TextEditingController();
  TextEditingController _alloyWheelComment =new TextEditingController();
  TextEditingController _rimComment =new TextEditingController();

  @override
  Widget build(BuildContext context) {
    ExteriorTyresProvider exteriorTyresProvider=Provider.of(context);
    FormData formData=Provider.of(context);
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
            child: Text('Bumper',style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),)),
        SizedBox(height: 6,),
        exteriorTyres("Front", exteriorTyresProvider, "BumperF", _bumperFrontCost, _bumperFrontComment),
        SizedBox(height: 6,),
        exteriorTyres("Rear", exteriorTyresProvider, "BumperR", _bumperRearCost, _bumperRearComment),
        SizedBox(height: 6,),
        exteriorTyres("Bonnet/hood", exteriorTyresProvider, "BumperBonnet", _bumperBonnetCost, _bumperBonnetComment),
        SizedBox(height: 6,),
        exteriorTyres("Roof", exteriorTyresProvider, "BumperRoof", _bumperRoofCost, _bumperRoofComment),
        SizedBox(height: 6,),
        Align(
            alignment: Alignment.topLeft,
            child: Text('Fender',style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),)),
        SizedBox(height: 6,),
        exteriorTyres("LHS", exteriorTyresProvider, "FenderL", _fenderLCost, _fenderLComment),
        SizedBox(height: 6,),
        exteriorTyres("RHS", exteriorTyresProvider, "FenderR", _fenderRCost, _fenderRComment),
        SizedBox(height: 6,),
        Align(
            alignment: Alignment.topLeft,
            child: Text('Door',style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),)),
        SizedBox(height: 6,),
        exteriorTyres("LHS Front", exteriorTyresProvider, "DoorLHSFront", _doorLhsFrontCost, _doorLhsFrontComment),
        SizedBox(height: 6,),
        exteriorTyres("LHS Rear", exteriorTyresProvider, "DoorLHSRear", _doorLhsRearCost, _doorLhsRearComment),
        SizedBox(height: 6,),
        exteriorTyres("RHS Front", exteriorTyresProvider, "DoorRHSFront", _doorRhsFrontCost, _doorRhsFrontComment),
        SizedBox(height: 6,),
        exteriorTyres("RHS Rear", exteriorTyresProvider, "DoorRHSRear", _doorRhsRearCost, _doorRhsRearComment),
        SizedBox(height: 6,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text("Pillar",style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),)),
            Flexible(flex: 2,child: Row(
              children: [
                Radio(value: "Ok", groupValue: exteriorTyresProvider.exterior["Pillar"], onChanged: (val)=>exteriorTyresProvider.updateKey("Pillar", val),activeColor: PRIMARY_COLOR,),
                Text("Ok"),
                Radio(value: "Not Ok", groupValue: exteriorTyresProvider.exterior["Pillar"], onChanged: (val)=>exteriorTyresProvider.updateKey("Pillar", val),activeColor: PRIMARY_COLOR,),
                Text("Not Ok"),
              ],
            ))
          ],
        ),
        SizedBox(height: 6,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text('Cost:')),
            Flexible(flex: 1,child: TextFormField(
              controller: _pillarCost,
              validator: (value) => value.isEmpty? 'this field is required' : null,
              decoration: FormBorder.myDecoration(),
              autofocus: false,
            ),)

          ],
        ),
        SizedBox(height: 6,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text('Comment:')),
            Flexible(flex: 1,child: TextFormField(
              controller: _pillarComment,
              validator: (value) => value.isEmpty? 'this field is required' : null,
              decoration: FormBorder.myDecoration(),
              autofocus: false,
            ),)

          ],
        ),
        Align(
            alignment: Alignment.topLeft,
            child: Text('Running Border',style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),)),
        SizedBox(height: 6,),
        exteriorTyres("LHS", exteriorTyresProvider, "RunningLHS", _runningLhsCost, _runningLhsComment),
        SizedBox(height: 6,),
        exteriorTyres("RHS", exteriorTyresProvider, "RunningRHS", _runningRhsCost, _runningRhsComment),
        SizedBox(height: 6,),
        Align(
            alignment: Alignment.topLeft,
            child: Text('Quarter Panel',style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),)),
        SizedBox(height: 6,),
        exteriorTyres("LHS", exteriorTyresProvider, "QuarterLHS", _quarterLhsCost, _quarterLhsComment),
        SizedBox(height: 6,),
        exteriorTyres("RHS", exteriorTyresProvider, "QuarterRHS", _quarterRhsCost, _quarterRhsComment),
        SizedBox(height: 6,),
        exteriorTyres("Dickey Door/Boot Door", exteriorTyresProvider, "DickeyDoor", _dickeyDoorCost, _dickeyDoorComment),
        SizedBox(height: 6,),
        exteriorTyres("Boot Floor", exteriorTyresProvider, "BootFloor", _bootFloorCost, _bootFloorComment),
        SizedBox(height: 6,),
        exteriorTyres("Firewall", exteriorTyresProvider, "Firewall", _firewallCost, _firewallComment),
        SizedBox(height: 6,),
        exteriorTyres("Apron", exteriorTyresProvider, "Apron", _apronCost, _apronComment),
        SizedBox(height: 6,),
        exteriorTyres("Cowl Top", exteriorTyresProvider, "CowlTop", _cowlTopCost, _cowlTopComment),
        SizedBox(height: 6,),
        exteriorTyres("Lower Cross Member", exteriorTyresProvider, "LowerCross", _lowerCrossCost, _lowerCrossComment),
        SizedBox(height: 6,),
        exteriorTyres("Upper Cross Member", exteriorTyresProvider, "UpperCross", _upperCrossCost, _upperCrossComment),
        SizedBox(height: 6,),
        exteriorTyres("Head Light Support", exteriorTyresProvider, "Headlight", _headlightCost, _headlightComment),
        SizedBox(height: 6,),
        exteriorTyres("Radiator Support", exteriorTyresProvider, "Radiator", _radiatorCost, _radiatorComment),
        SizedBox(height: 6,),
        Align(
            alignment: Alignment.topLeft,
            child: Text('Wind Shield',style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),)),
        SizedBox(height: 6,),
        exteriorTyres("Front", exteriorTyresProvider, "WindshieldFront", _windshieldFrontCost, _windshieldFrontComment),
        SizedBox(height: 6,),
        exteriorTyres("Rear", exteriorTyresProvider, "WindshieldRear", _windshieldRearCost, _windshieldRearComment),
        SizedBox(height: 6,),
        Align(
            alignment: Alignment.topLeft,
            child: Text('QRVM-Manual/Electric',style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),)),
        SizedBox(height: 6,),
        exteriorTyres("LHS", exteriorTyresProvider, "QRVMLHS", _QRVMLHSCost, _QRVMLHSComment),
        SizedBox(height: 6,),
        exteriorTyres("RHS", exteriorTyresProvider, "QRVMRHS", _QRVMRHSCost, _QRVMRHSComment),
        SizedBox(height: 6,),
        Align(
            alignment: Alignment.topLeft,
            child: Text('Light',style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),)),
        SizedBox(height: 6,),
        exteriorTyres("LHS Fog Light", exteriorTyresProvider, "lightLhsFog", _lightLhsFogCost, _lightLhsFogComment),
        SizedBox(height: 6,),
        exteriorTyres("LHS Headlight", exteriorTyresProvider, "lightLhsHead", _lightLhsHeadCost, _lightLhsHeadComment),
        SizedBox(height: 6,),
        exteriorTyres("LHS Tail Light", exteriorTyresProvider, "lightLhsTail", _lightLhsTailCost, _lightLhsTailComment),
        SizedBox(height: 6,),
        exteriorTyres("RHS Fog Light", exteriorTyresProvider, "lightRhsFog", _lightRhsFogCost, _lightRhsFogComment),
        SizedBox(height: 6,),
        exteriorTyres("RHS Headlight", exteriorTyresProvider, "lightRhsHead", _lightRhsHeadCost, _lightRhsHeadComment),
        SizedBox(height: 6,),
        exteriorTyres("RHS Tail Light", exteriorTyresProvider, "lightRhsTail", _lightRhsTailCost, _lightRhsTailComment),
        SizedBox(height: 6,),
        exteriorTyres("Rear Combination", exteriorTyresProvider, "rearCombination", _rearCombinationCost, _rearCombinationComment),
        SizedBox(height: 6,),
        exteriorTyres("Indicators", exteriorTyresProvider, "indicators", _indicatorCost, _indicatorComment),
        SizedBox(height: 6,),
        exteriorTyres("Alloy Wheel", exteriorTyresProvider, "alloyWheel", _alloyWheelCost, _alloyWheelComment),
        SizedBox(height: 6,),
        exteriorTyres("RIM", exteriorTyresProvider, "rim", _rimCost, _rimComment),
        SizedBox(height: 10,),
        exteriorTyres2("LHS Front Tyre", exteriorTyresProvider, "lhsFrontMake", 'lhsFrontThread'),
        SizedBox(height: 10,),
        exteriorTyres2("RHS Front Tyre", exteriorTyresProvider, "rhsFrontMake", 'rhsFrontThread'),
        SizedBox(height: 10,),
        exteriorTyres2("LHS Rear Tyre", exteriorTyresProvider, "lhsRearMake", 'lhsRearThread'),
        SizedBox(height: 10,),
        exteriorTyres2("RHS Rear Tyre", exteriorTyresProvider, "rhsRearMake", 'rhsRearThread'),
        SizedBox(height: 10,),
        exteriorTyres2("Spare Tyre", exteriorTyresProvider, "spareMake", 'spareThread'),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text("Battery",style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),)),
            Flexible(flex: 2,child: Row(
              children: [
                Radio(value: "Ok", groupValue: exteriorTyresProvider.exterior["Battery"], onChanged: (val)=>exteriorTyresProvider.updateKey("Battery", val),activeColor: PRIMARY_COLOR,),
                Text("Ok"),
                Radio(value: "Not Ok", groupValue: exteriorTyresProvider.exterior["Battery"], onChanged: (val)=>exteriorTyresProvider.updateKey("Battery", val),activeColor: PRIMARY_COLOR,),
                Text("Not Ok"),
              ],
            ))
          ],
        ),
        SizedBox(height: 6,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text('Make:')),
            Flexible(flex: 1,child: TextFormField(
              controller: _batteryMake,
              validator: (value) => value.isEmpty? 'this field is required' : null,
              decoration: FormBorder.myDecoration(),
              autofocus: false,
            ),)

          ],
        ),
        SizedBox(height: 6,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text('Warranty period:')),
            Flexible(flex: 1,child: TextFormField(
              controller: _batteryWarranty,
              validator: (value) => value.isEmpty? 'this field is required' : null,
              decoration: FormBorder.myDecoration(),
              autofocus: false,
            ),)

          ],
        ),
        SizedBox(height: 6,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text('Comment:')),
            Flexible(flex: 1,child: TextFormField(
              controller: _batteryComment,
              validator: (value) => value.isEmpty? 'this field is required' : null,
              decoration: FormBorder.myDecoration(),
              autofocus: false,
            ),)

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text("Flood Affected",style: AppFontStyle.regularTextStyle2(APP_BLACK_COLOR),)),
            Flexible(flex: 1,child: Row(
              children: [
                Radio(value:1, groupValue: exteriorTyresProvider.flood, onChanged: (val)=>exteriorTyresProvider.flood = 1,activeColor: PRIMARY_COLOR,),
                Text("Yes"),
                Radio(value: 2, groupValue: exteriorTyresProvider.flood, onChanged: (val)=>exteriorTyresProvider.flood = 2,activeColor: PRIMARY_COLOR,),
                Text("No"),
              ],
            ))
          ],
        ),
        SizedBox(height: 20,),
        exteriorTyresProvider.flood==1?Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text('Flood Category')),
            Flexible(flex: 1,child: DropdownButtonFormField(
              decoration: FormBorder.myDecoration(),
              items: [
                DropdownMenuItem(value: "A",child: Text("A")),
                DropdownMenuItem(value: "B",child: Text("B")),
                DropdownMenuItem(value: "C",child: Text("C"))
              ],
              onChanged: (value){},
            ))

          ],
        ):Container(),
        SizedBox(height: 8,),
        Row(
          children: [
            Text('Rating:',style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),),
            SizedBox(width: 4,),
            ratingBar(exteriorTyresProvider),
          ],
        ),
        SizedBox(height: 10,),

        GestureDetector(
          onTap: (){
            formData.activeStep = 7;
            formData.stepCount=7;
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
  Widget exteriorTyres(String text,ExteriorTyresProvider exteriorTyresProvider,String groupValue,TextEditingController controller1,TextEditingController controller2){
    return Column(
      children: [
      Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(flex: 1,child: Text("$text",style: AppFontStyle.regularTextStyle2(APP_BLACK_COLOR),)),
        Flexible(flex: 2,child: Row(
          children: [
            Radio(value: "Ok", groupValue: exteriorTyresProvider.exterior[groupValue], onChanged: (val)=>exteriorTyresProvider.updateKey(groupValue, val),activeColor: PRIMARY_COLOR,),
            Text("Ok"),
            Radio(value: "Not Ok", groupValue: exteriorTyresProvider.exterior[groupValue], onChanged: (val)=>exteriorTyresProvider.updateKey(groupValue, val),activeColor: PRIMARY_COLOR,),
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
  Widget exteriorTyres2(String text,ExteriorTyresProvider exteriorTyresProvider,String dropDownVal1,String dropDownVal2){
      return Column(
        children: [
          Align(alignment: Alignment.topLeft,child: Text("$text",style: AppFontStyle.regularTextStyle2(APP_BLACK_COLOR),)),
          SizedBox(height: 4,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Make:')),
              Flexible(flex: 2,child: DropdownButtonFormField(
                decoration: FormBorder.myDecoration(),
                items: [
                  DropdownMenuItem(value: "make",child: Text("make")),
                  DropdownMenuItem(value: "make",child: Text("make1")),
                  DropdownMenuItem(value: "make",child: Text("make2"))
                ],
                onChanged: (value)=>exteriorTyresProvider.updateDropDown(dropDownVal1, value),
              ))

            ],
          ),
          SizedBox(height: 6,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Thread %:')),
              Flexible(flex: 2,child: DropdownButtonFormField(
                decoration: FormBorder.myDecoration(),
                items: [
                  DropdownMenuItem(value: "0%",child: Text("0%")),
                  DropdownMenuItem(value: "10%",child: Text("10%")),
                  DropdownMenuItem(value: "25%",child: Text("25%")),
                  DropdownMenuItem(value: "50%",child: Text("50%")),
                  DropdownMenuItem(value: "75%",child: Text("75%")),
                  DropdownMenuItem(value: "90%",child: Text("90%")),
                  DropdownMenuItem(value: "100%",child: Text("100%")),

                ],
                onChanged: (value)=>exteriorTyresProvider.updateDropDown(dropDownVal2, value),
              ))

            ],
          ),
        ],
      );
  }
  Widget ratingBar(ExteriorTyresProvider exteriorTyresProvider){
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
      onRatingUpdate: (rating)=>exteriorTyresProvider.rating=rating,
    );

  }
}
