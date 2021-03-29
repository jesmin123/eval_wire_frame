import 'package:eval_wire_frame/Provider/form_data_provider.dart';
import 'package:eval_wire_frame/Provider/otherDetailsProvider.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OtherDetails extends StatefulWidget {
  @override
  _OtherDetailsState createState() => _OtherDetailsState();
}

class _OtherDetailsState extends State<OtherDetails> {
  @override
  Widget build(BuildContext context) {
    OtherDetailsProvider otherDetailsProvider = Provider.of(context);
    FormData formData=Provider.of(context);
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text('RC Book:')),
            Flexible(flex: 2,child: Row(
              children: [
                new Radio(value: "Yes", groupValue: otherDetailsProvider.rcBook, onChanged: (val)=>otherDetailsProvider.rcBook=val,activeColor: PRIMARY_COLOR,),
                Text('Yes'),
                new Radio(value: "No", groupValue: otherDetailsProvider.rcBook, onChanged: (val)=>otherDetailsProvider.rcBook=val,activeColor: PRIMARY_COLOR,),
                Text('No'),
              ],


            ))

          ],
        ),
        SizedBox(height: 10,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text('Original Invoice:')),
            Flexible(flex: 2,child: Row(
              children: [
                new Radio(value: "Yes", groupValue: otherDetailsProvider.originalInvoice, onChanged: (val)=>otherDetailsProvider.originalInvoice=val,activeColor: PRIMARY_COLOR,),
                Text('Yes'),
                new Radio(value: "No", groupValue: otherDetailsProvider.originalInvoice, onChanged: (val)=>otherDetailsProvider.originalInvoice=val,activeColor: PRIMARY_COLOR,),
                Text('No'),
              ],


            ))

          ],
        ),
        SizedBox(height: 10,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text('Insurance:')),
            Flexible(flex: 2,child: Row(
              children: [
                new Radio(value: "Yes", groupValue: otherDetailsProvider.insurance, onChanged: (val)=>otherDetailsProvider.insurance=val,activeColor: PRIMARY_COLOR,),
                Text('Yes'),
                new Radio(value: "No", groupValue: otherDetailsProvider.insurance, onChanged: (val)=>otherDetailsProvider.insurance=val,activeColor: PRIMARY_COLOR,),
                Text('No'),
              ],


            ))

          ],
        ),
        SizedBox(height: 10,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text('EW/TV Warranty:')),
            Flexible(flex: 2,child: Row(
              children: [
                new Radio(value: "Yes", groupValue: otherDetailsProvider.warranty, onChanged: (val)=>otherDetailsProvider.warranty=val,activeColor: PRIMARY_COLOR,),
                Text('Yes'),
                new Radio(value: "No", groupValue: otherDetailsProvider.warranty, onChanged: (val)=>otherDetailsProvider.warranty=val,activeColor: PRIMARY_COLOR,),
                Text('No'),
              ],


            ))

          ],
        ),
        SizedBox(height: 10,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1,child: Text('HP Entry:')),
            Flexible(flex: 2,child: Row(
              children: [
                new Radio(value: "Yes", groupValue: otherDetailsProvider.entry, onChanged: (val)=>otherDetailsProvider.entry=val,activeColor: PRIMARY_COLOR,),
                Text('Yes'),
                new Radio(value: "No", groupValue: otherDetailsProvider.entry, onChanged: (val)=>otherDetailsProvider.entry=val,activeColor: PRIMARY_COLOR,),
                Text('No'),
              ],


            ))

          ],
        ),
        SizedBox(height: 10,),
        GestureDetector(
          onTap: (){
              formData.activeStep = 3;
              formData.stepCount=3;
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
