import 'package:eval_wire_frame/Provider/form_data_provider.dart';
import 'package:eval_wire_frame/Provider/vehicleDetailsProvider.dart';
import 'package:eval_wire_frame/constants/border.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VehicleDetails extends StatefulWidget {
  @override
  _VehicleDetailsState createState() => _VehicleDetailsState();
}

class _VehicleDetailsState extends State<VehicleDetails> {
GlobalKey<FormState> _formKey=GlobalKey<FormState>();
  TextEditingController _varientTextEditingController= new TextEditingController();
  TextEditingController _yearTextEditingController= new TextEditingController();
  TextEditingController _seatingCapacityTextEditingController= new TextEditingController();
  TextEditingController _colorTextEditingController= new TextEditingController();
  TextEditingController _kmsTextEditingController= new TextEditingController();
  TextEditingController _emissionTextEditingController= new TextEditingController();
  TextEditingController _engineCCTextEditingController= new TextEditingController();
  TextEditingController _chasisNoTextEditingController= new TextEditingController();
  TextEditingController _engineNoTextEditingController= new TextEditingController();
  TextEditingController _enquiryNoTextEditingController= new TextEditingController();
  @override
  Widget build(BuildContext context) {
    VehicleDetailProvider vehicleDetailProvider= Provider.of(context);
    FormData formData=Provider.of(context);
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Manufacturer:')),
              Flexible(flex: 2,child: DropdownButtonFormField(
                decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                  hintText: 'Manufacturer',contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                ),
                items: [
                  DropdownMenuItem(
                    child: Text('Maruti Suzuki'),value: "maruti Suzuki",),
                  DropdownMenuItem(
                    child: Text('hjjk'),value: "jkl",),
                  DropdownMenuItem(
                    child: Text('ghj'),value: "bnm",),
                  DropdownMenuItem(
                    child: Text('ertyu'),value: "fghj",),
                ],
                onChanged: (value){
                  vehicleDetailProvider.manufacturer = value;
                },
              ),)

            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Model:')),
              Flexible(flex: 2,child: DropdownButtonFormField(
                decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                ),
                items: [
                  DropdownMenuItem(
                    child: Text('Maruti Suzuki'),value: "maruti Suzuki",),
                  DropdownMenuItem(
                    child: Text('hjjk'),value: "jkl",),
                  DropdownMenuItem(
                    child: Text('ghj'),value: "bnm",),
                  DropdownMenuItem(
                    child: Text('ertyu'),value: "fghj",),
                ],
                onChanged: (value){
                  vehicleDetailProvider.model = value;
                },
              ),)

            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Variant:')),
              Flexible(flex: 2,child: TextFormField(
                controller: _varientTextEditingController,

                validator: (value) => value.isEmpty ? 'this field is required' : null,
                decoration: FormBorder.myDecoration(),
                autofocus: false,
              ),)

            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Year:')),
              Flexible(flex: 2,child: TextFormField(
                controller: _yearTextEditingController,
                validator: (value) => value.isEmpty ? 'this field is required' : null,
                decoration: FormBorder.myDecoration(),
                autofocus: false,
              ),)

            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Seating Capacity:')),
              Flexible(flex: 2,child: TextFormField(
                controller: _seatingCapacityTextEditingController,
                validator: (value) => value.isEmpty ? 'this field is required' : null,
                decoration: FormBorder.myDecoration(),
                autofocus: false,
              ),)

            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Color:')),
              Flexible(flex: 2,child: TextFormField(
                controller: _colorTextEditingController,
                validator: (value) => value.isEmpty ? 'this field is required' : null,
                decoration: FormBorder.myDecoration(),
                autofocus: false,
              ),)

            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Kms:')),
              Flexible(flex: 2,child: TextFormField(
                controller: _kmsTextEditingController,
                validator: (value) => value.isEmpty ? 'this field is required' : null,
                decoration: FormBorder.myDecoration(),
                autofocus: false,
              ),)

            ],
          ),
          SizedBox(height: 10,),
         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(flex: 1,child: Text('Fuel:')),
          Flexible(flex: 2,child: DropdownButtonFormField(
            decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
              hintText: 'Fuel',contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            ),
            items: [
              DropdownMenuItem(
                child: Text('Hybrid'),value: "Hybrid",),
              DropdownMenuItem(
                child: Text('Petrol'),value: "Petrol",),
              DropdownMenuItem(
                child: Text('Diesel'),value: "Diesel",),
              DropdownMenuItem(
                child: Text('Electric'),value: "Electric",),
              DropdownMenuItem(
                child: Text('LPG'),value: "LPG",),
            ],
            onChanged: (value){
              vehicleDetailProvider.fuel = value;
            },
          ),)

        ],
      ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Transmission:')),
              Flexible(flex: 2,child: DropdownButtonFormField(
                decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                   hintText: 'Transmission',contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                ),
                items: [
                  DropdownMenuItem(
                    child: Text('CVT '),value: "CVT",),
                  DropdownMenuItem(
                    child: Text('AGS'),value: "AGS",),
                  DropdownMenuItem(
                    child: Text('AMT'),value: "AMT",),
                  DropdownMenuItem(
                    child: Text('Manual'),value: "Manual",),
                  DropdownMenuItem(
                    child: Text('Automatic'),value: "Automatic",),
                ],
                onChanged: (value){
                  vehicleDetailProvider.transmission = value;
                },
              ),)

            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Emission:')),
              Flexible(flex: 2,child: TextFormField(
                controller: _emissionTextEditingController,
                validator: (value) => value.isEmpty ? 'this field is required' : null,
                decoration: FormBorder.myDecoration(),
                autofocus: false,
              ),)

            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Engine CC:')),
              Flexible(flex: 2,child: TextFormField(
                controller: _engineCCTextEditingController,
                validator: (value) => value.isEmpty ? 'this field is required' : null,
                decoration: FormBorder.myDecoration(),
                autofocus: false,
              ),)

            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Chasis No:')),
              Flexible(flex: 2,child: TextFormField(
                controller: _chasisNoTextEditingController,
                validator: (value) => value.isEmpty ? 'this field is required' : null,
                decoration: FormBorder.myDecoration(),
                autofocus: false,
              ),)

            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Engine No:')),
              Flexible(flex: 2,child: TextFormField(
                controller: _engineNoTextEditingController,
                validator: (value) => value.isEmpty ? 'this field is required' : null,
                decoration: FormBorder.myDecoration(),
                autofocus: false,
              ),)

            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('VIN Plate:')),
              Flexible(flex: 2,child: Row(
                children: [
                  new Radio(value: "Yes", groupValue: vehicleDetailProvider.vinPlate, onChanged: (val)=>vehicleDetailProvider.vinPlate=val,activeColor: PRIMARY_COLOR,),
                  Text('Yes'),
                  new Radio(value: "No", groupValue: vehicleDetailProvider.vinPlate, onChanged: (val)=>vehicleDetailProvider.vinPlate=val,activeColor: PRIMARY_COLOR,),
                  Text('No'),
                ],


              ))

            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('External CNG/LPG:')),
              Flexible(flex: 2,child: Row(
                children: [
                  new Radio(value: "Yes", groupValue: vehicleDetailProvider.externalCng, onChanged: (val)=>vehicleDetailProvider.externalCng=val,activeColor: PRIMARY_COLOR,),
                  Text('Yes'),
                  new Radio(value: "No", groupValue: vehicleDetailProvider.externalCng, onChanged: (val)=>vehicleDetailProvider.externalCng=val,activeColor: PRIMARY_COLOR,),
                  Text('No'),
                ],


              ))

            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Vehicle Type:')),
              Flexible(flex: 2,child: DropdownButtonFormField(
                decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                  hintText: 'Vehicle type',contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                ),
                items: [
                  DropdownMenuItem(
                    child: Text('SUV '),value: "SUV",),
                  DropdownMenuItem(
                    child: Text('hjjk'),value: "jkl",),
                  DropdownMenuItem(
                    child: Text('ghj'),value: "bnm",),
                  DropdownMenuItem(
                    child: Text('ertyu'),value: "fghj",),
                ],
                onChanged: (value){
                  vehicleDetailProvider.vehicleType = value;
                },
              ),)

            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 1,child: Text('Enquiry No (DMS No):')),
              Flexible(flex: 2,child:TextFormField(
                validator: (value) => value.isEmpty ? 'this field is required' : null,
                controller: _enquiryNoTextEditingController,
                decoration: FormBorder.myDecoration(),
              ),)

            ],
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: (){
              if(_formKey.currentState.validate()) {
                vehicleDetailProvider.varient=_varientTextEditingController.text;
                // vehicleDetailProvider.year=_yearTextEditingController.text as int;
                // vehicleDetailProvider.seatingCapacity=_seatingCapacityTextEditingController.text as int;
                vehicleDetailProvider.color=_colorTextEditingController.text;
                // vehicleDetailProvider.kms=_kmsTextEditingController.text as int;
                vehicleDetailProvider.emission=_emissionTextEditingController.text;
                vehicleDetailProvider.engineCC=_engineCCTextEditingController.text;
                vehicleDetailProvider.chasisNo=_chasisNoTextEditingController.text;
                vehicleDetailProvider.engineNo=_enquiryNoTextEditingController.text;
                vehicleDetailProvider.enquiryNo=_enquiryNoTextEditingController.text;

                formData.activeStep = 2;
                formData.stepCount=2;
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
