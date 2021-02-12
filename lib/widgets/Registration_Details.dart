

import 'package:eval_wire_frame/Provider/RegistrationDetailProvider.dart';
import 'package:eval_wire_frame/Provider/form_data_provider.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegistrationDetails extends StatefulWidget {
  @override
  _RegistrationDetailsState createState() => _RegistrationDetailsState();
}

class _RegistrationDetailsState extends State<RegistrationDetails> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
TextEditingController _regNoEditingController = new TextEditingController();
TextEditingController _nameOfRegOwnerEditingController = new TextEditingController();
TextEditingController _dateOfRegEditingController = new TextEditingController();
TextEditingController _taxTypeEditingController = new TextEditingController();
TextEditingController _taxValidityEditingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    RegistrationDetailProvider registrationDetail = Provider.of(context);
    FormData formData = Provider.of(context);
    return Form(
      key: _formKey,
        child: Container(

      child: Column(

        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Reg No:')),
              Flexible(flex: 1,child: TextFormField(
                controller: _regNoEditingController,
                validator: (value) => value == null ? 'this field is required' : null,
                decoration: InputDecoration(enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),borderSide:BorderSide(width: 1,color: PRIMARY_COLOR)
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),borderSide:BorderSide(width: 1,color: PRIMARY_COLOR)
                ),),
                autofocus: false,
              ),)
              
            ],
          ),
          SizedBox(height: 6,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Name of Reg owner:')),
              Flexible(flex: 1,child: TextFormField(
                controller: _nameOfRegOwnerEditingController,
                validator: (value) => value == null ? 'this field is required' : null,
                decoration: InputDecoration(enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),borderSide:BorderSide(width: 1,color: PRIMARY_COLOR)
                ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),borderSide:BorderSide(width: 1,color: PRIMARY_COLOR)
                  ),
                ),
                autofocus: false,
              ),)

            ],
          ),
          SizedBox(height: 6,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Ownership:')),
              Flexible(flex: 1,child: DropdownButtonFormField(
                  decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                  hintText: 'Select Ownership'
                  ),
                  items: [
                    DropdownMenuItem(
                    child: Text('1st Owner'),value: "1st Owner",),
                 DropdownMenuItem(
                    child: Text('2nd Owner'),value: "2nd Owner",),
                 DropdownMenuItem(
                    child: Text('3rd Owner'),value: "3rd Owner",),
                DropdownMenuItem(
                    child: Text('4th Owner'),value: "4th Owner",),
                DropdownMenuItem(
                    child: Text('5th Owner'),value: "5th Owner",),
                 DropdownMenuItem(
                    child: Text('6th Owner'),value: "6th Owner",),

              ],
                onChanged: (value){
                    registrationDetail.ownership = value;
                    },
              ),)

            ],
          ),
          SizedBox(height: 6,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Date of Reg:')),
              Flexible(flex: 1,child: TextFormField(
                controller: _dateOfRegEditingController,
                validator: (value) => value == null ? 'this field is required' : null,
                decoration: InputDecoration(enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),borderSide:BorderSide(width: 1,color: PRIMARY_COLOR)
                ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),borderSide:BorderSide(width: 1,color: PRIMARY_COLOR)
                  ),
                ),
                autofocus: false,
              ),)

            ],
          ),
          SizedBox(height: 6,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Tax type:')),
              Flexible(flex: 1,child: TextFormField(
                controller: _taxTypeEditingController,
                validator: (value) => value == null ? 'this field is required' : null,
                decoration: InputDecoration(enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),borderSide:BorderSide(width: 1,color: PRIMARY_COLOR)
                ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),borderSide:BorderSide(width: 1,color: PRIMARY_COLOR)
                  ),
                ),
                autofocus: false,
              ),)

            ],
          ),
          SizedBox(height: 6,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Tax Validity:')),
              Flexible(flex: 1,child: TextFormField(
                controller: _taxValidityEditingController,
                validator: (value) => value == null ? 'this field is required' : null,
                decoration: InputDecoration(enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),borderSide:BorderSide(width: 1,color: PRIMARY_COLOR)
                ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),borderSide:BorderSide(width: 1,color: PRIMARY_COLOR)
                  ),
                ),
                autofocus: false,
              ),)

            ],
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: (){
              if(_formKey.currentState.validate())
                registrationDetail.regNo=_regNoEditingController.text;

              registrationDetail.nameOfRegOwner=_nameOfRegOwnerEditingController.text;
              registrationDetail.dateOfReg= _dateOfRegEditingController.text;
              registrationDetail.taxType=_taxTypeEditingController.text;
              registrationDetail.taxValidity=_taxValidityEditingController.text;
              formData.activeStep = 1;

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
    ));
  }
}
