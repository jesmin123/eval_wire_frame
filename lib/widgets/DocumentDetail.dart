import 'package:eval_wire_frame/Provider/DocumentDetailProvider.dart';
import 'package:eval_wire_frame/Provider/form_data_provider.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DocumentDetail extends StatefulWidget {
  @override
  _DocumentDetailState createState() => _DocumentDetailState();
}

class _DocumentDetailState extends State<DocumentDetail> {
  @override
  Widget build(BuildContext context) {
    DocumentProvider documentProvider = Provider.of(context);
    FormData formData = Provider.of(context);
    return Column(
      children: [
        CustomRow("Original RC Availability:", documentProvider,"ora"),
        SizedBox(height: 6,),
        CustomRow("Original Insurance:", documentProvider,"oi"),
        SizedBox(height: 6,),
        CustomRow("Original Tax Token:", documentProvider,"ott"),
        SizedBox(height: 6,),
        CustomRow("Original Pollution Certificate:", documentProvider,"opc"),
        SizedBox(height: 6,),
        CustomRow("Duplicate Keys:", documentProvider,"dk"),
        SizedBox(height: 6,),
        CustomRow("Remote Controls:", documentProvider,"rc"),
        SizedBox(height: 6,),
        CustomRow("Battery Warranty Cards:", documentProvider,"bwc"),
        SizedBox(height: 6,),
        CustomRow("Extended Warranty Details:", documentProvider,"ewd"),
        SizedBox(height: 6,),
        CustomRow("Service Manual:", documentProvider,"sm"),
        SizedBox(height: 10,),
        GestureDetector(
          onTap: (){
            formData.activeStep = 6;
            formData.stepCount=6;
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
  Widget CustomRow(String text,DocumentProvider documentProvider,String GroupValue){

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(flex: 1,child: Text("$text")),
        Flexible(flex: 1,child: Row(
          children: [
             Radio(value: "Yes", groupValue: documentProvider.selectorKeys[GroupValue], onChanged: (val)=>documentProvider.updateSelectors(GroupValue, val),activeColor: PRIMARY_COLOR,),
            Text("Yes"),
             Radio(value: "No", groupValue: documentProvider.selectorKeys[GroupValue], onChanged: (val)=>documentProvider.updateSelectors(GroupValue, val),activeColor: PRIMARY_COLOR,),
            Text("No"),
          ],
        ))
      ],
    );
  }
}
