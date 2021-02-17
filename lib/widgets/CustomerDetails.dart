import 'package:eval_wire_frame/Provider/CustomerDetailsProvider.dart';
import 'package:eval_wire_frame/Provider/form_data_provider.dart';
import 'package:eval_wire_frame/constants/border.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomerDetails extends StatefulWidget {
  @override
  _CustomerDetailsState createState() => _CustomerDetailsState();
}

class _CustomerDetailsState extends State<CustomerDetails> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _nameTextEditingController= new TextEditingController();
  TextEditingController _professionTextEditingController= new TextEditingController();
  TextEditingController _phone1TextEditingController= new TextEditingController();
  TextEditingController _phone2TextEditingController= new TextEditingController();
  TextEditingController _adressTextEditingController= new TextEditingController();
  TextEditingController _emailTextEditingController= new TextEditingController();
  @override
  Widget build(BuildContext context) {
    FormData formData = Provider.of(context);
    CustomerDetailsProvider customerDetailsProvider = Provider.of(context);
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: 2,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Name on RC:')),
              Flexible(flex: 1,child: TextFormField(
                controller: _nameTextEditingController,
                validator: (value) => value.isEmpty? 'this field is required' : null,
                decoration: FormBorder.myDecoration(),
                autofocus: false,
              ),)

            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Profession:')),
              Flexible(flex: 1,child: TextFormField(
                controller: _professionTextEditingController,
                validator: (value) => value.isEmpty? 'this field is required' : null,
                decoration: FormBorder.myDecoration(),
                autofocus: false,
              ),)

            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Phone No 1:')),
              Flexible(flex: 1,child: TextFormField(
                controller: _phone1TextEditingController,
                validator: (value) => value.isEmpty? 'this field is required' : null,
                decoration: FormBorder.myDecoration(),
                autofocus: false,
              ),)

            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Phone No 2:')),
              Flexible(flex: 1,child: TextFormField(
                controller: _phone2TextEditingController,
                validator: (value) => value.isEmpty? 'this field is required' : null,
                decoration: FormBorder.myDecoration(),
                autofocus: false,
              ),)

            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Adress:')),
              Flexible(flex: 1,child: TextFormField(
                controller: _adressTextEditingController,
                validator: (value) => value.isEmpty? 'this field is required' : null,
                decoration: FormBorder.myDecoration(),
                autofocus: false,
              ),)

            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('E mail:')),
              Flexible(flex: 1,child: TextFormField(
                controller: _emailTextEditingController,
                validator: (value) => value.isEmpty? 'this field is required' : null,
                decoration: FormBorder.myDecoration(),
                autofocus: false,
              ),)

            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Age Group:')),
              Flexible(flex: 1,child: DropdownButtonFormField(
                decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                  hintText: 'Age Group',contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                ),
                items: [
                  DropdownMenuItem(
                    child: Text('20-30'),value: "20",),
                  DropdownMenuItem(
                    child: Text('30-40'),value: "30",),


                ],
                onChanged: (value){
                  customerDetailsProvider.ageGroup = value;
                },
              ),)

            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Source Name:')),
              Flexible(flex: 1,child: DropdownButtonFormField(
                decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                  hintText: ' ',contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                ),
                items: [
                  DropdownMenuItem(
                    child: Text('20-30'),value: "20",),
                  DropdownMenuItem(
                    child: Text('30-40'),value: "30",),


                ],
                onChanged: (value){
                  customerDetailsProvider.sourceName = value;
                },
              ),)

            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Buyer Type:')),
              Flexible(flex: 1,child: DropdownButtonFormField(
                decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                  hintText: ' ',contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                ),
                items: [
                  DropdownMenuItem(
                    child: Text('20-30'),value: "20",),
                  DropdownMenuItem(
                    child: Text('30-40'),value: "30",),


                ],
                onChanged: (value){
                  customerDetailsProvider.buyerType = value;
                },
              ),)

            ],
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: (){
              if(_formKey.currentState.validate()){
              formData.activeStep = 4;
              formData.stepCount=4;
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
