import 'package:eval_wire_frame/Provider/InsuranceProvider.dart';
import 'package:eval_wire_frame/Provider/form_data_provider.dart';
import 'package:eval_wire_frame/constants/border.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class InsuranceDetails extends StatefulWidget {
  @override
  _InsuranceDetailsState createState() => _InsuranceDetailsState();
}

class _InsuranceDetailsState extends State<InsuranceDetails> {
  GlobalKey<FormState> _formKey=GlobalKey<FormState>();
  TextEditingController _premiumTextEditingController=new TextEditingController();
  TextEditingController _expiryDateTextEditingController=new TextEditingController();
  TextEditingController _companyNameTextEditingController=new TextEditingController();
  TextEditingController _iDVValueTextEditingController=new TextEditingController();
  TextEditingController _nCBValueTextEditingController=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    FormData formData =Provider.of(context);
    InsuranceProvider insuranceProvider=Provider.of(context);
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text("Insurance Type:")),
              Flexible(flex: 1,
                child: Column(
                children: [
                  Row(
                    children: [
                      new Radio(value: "Comprehensive", groupValue: insuranceProvider.insuranceType, onChanged: (val)=>insuranceProvider.insuranceType= val,activeColor: PRIMARY_COLOR,),
                      Text("Comprehensive")
                    ],
                  ),
                  Row(
                    children: [
                      new Radio(value: "Third Party", groupValue: insuranceProvider.insuranceType, onChanged: (val)=>insuranceProvider.insuranceType= val,activeColor: PRIMARY_COLOR,),
                      Text("Third Party")
                    ],
                  )
                ],
              ),)
            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Premium:')),
              Flexible(flex: 1,child: TextFormField(
                controller: _premiumTextEditingController,

                validator: (value) => value.isEmpty ? 'this field is required' : null,
                decoration: FormBorder.myDecoration(),
                autofocus: false,
              ),)

            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Expiry Date:')),
              Flexible(flex: 1,child: TextFormField(
                controller: _expiryDateTextEditingController,

                validator: (value) => value.isEmpty ? 'this field is required' : null,
                decoration: FormBorder.myDecoration(),
                autofocus: false,
              ),)

            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Company Name:')),
              Flexible(flex: 1,child: TextFormField(
                controller: _companyNameTextEditingController,

                validator: (value) => value.isEmpty ? 'this field is required' : null,
                decoration: FormBorder.myDecoration(),
                autofocus: false,
              ),)

            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('IDV Value (in percent):')),
              Flexible(flex: 1,child: TextFormField(
                controller: _iDVValueTextEditingController,

                validator: (value) => value.isEmpty ? 'this field is required' : null,
                decoration: FormBorder.myDecoration(),
                autofocus: false,
              ),)

            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('NCB Value:')),
              Flexible(flex: 1,child: TextFormField(
                controller: _nCBValueTextEditingController,

                validator: (value) => value.isEmpty ? 'this field is required' : null,
                decoration: FormBorder.myDecoration(),
                autofocus: false,
              ),)

            ],
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: (){
              if(_formKey.currentState.validate()){
              formData.activeStep = 5;
              formData.stepCount=5;
              }


            },
            child: Container(
              height:60 ,
              width: 60,
              decoration: BoxDecoration(shape: BoxShape.circle,color: PRIMARY_COLOR,),
              child: Icon(Icons.arrow_forward_ios_outlined,color: APP_WHITE_COLOR,),
            ),
          )
        ],
      ),
    );
  }
}
