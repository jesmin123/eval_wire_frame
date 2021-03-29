import 'package:eval_wire_frame/Provider/SourceNowProvider.dart';
import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/border.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:eval_wire_frame/widgets/appBar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SourceNow extends StatefulWidget {
  @override
  _SourceNowState createState() => _SourceNowState();
}

class _SourceNowState extends State<SourceNow> {
  TextEditingController _rCOwner = TextEditingController();
  TextEditingController _regNo = TextEditingController();
  TextEditingController _chasisNo = TextEditingController();
  TextEditingController _engineNo = TextEditingController();
  TextEditingController _model = TextEditingController();
  TextEditingController _year = TextEditingController();
  TextEditingController _customerName = TextEditingController();
  TextEditingController _address = TextEditingController();
  TextEditingController _newCarModel = TextEditingController();
  TextEditingController _dateOfSourcing = TextEditingController();
  TextEditingController _mtvPrice = TextEditingController();
  TextEditingController _exchangeBonus = TextEditingController();
  TextEditingController _totalPrice = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SorceNowProvider sorceNowProvider=Provider.of(context);
    return Scaffold(
      backgroundColor: APP_WHITE_COLOR,
       appBar: MAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:10.0,right: 8.0),
          child: Column(
            children: [
              Text("Sourcing Information",style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),),
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text('RC OWner Name')),
                  Flexible(flex: 1,child: TextFormField(
                    controller: _rCOwner,
                    validator: (value) => value.isEmpty ? 'this field is required' : null,
                    decoration: FormBorder.myDecoration(),
                    autofocus: false,
                  ),)

                ],
              ),
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text('Registration Number')),
                  Flexible(flex: 1,child: TextFormField(
                    controller: _regNo,
                    validator: (value) => value.isEmpty ? 'this field is required' : null,
                    decoration: FormBorder.myDecoration(),
                    autofocus: false,
                  ),)

                ],
              ),
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text('Chasis No')),
                  Flexible(flex: 1,child: TextFormField(
                    controller: _chasisNo,
                    validator: (value) => value.isEmpty ? 'this field is required' : null,
                    decoration: FormBorder.myDecoration(),
                    autofocus: false,
                  ),)

                ],
              ),
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text('Engine No')),
                  Flexible(flex: 1,child: TextFormField(
                    controller: _engineNo,
                    validator: (value) => value.isEmpty ? 'this field is required' : null,
                    decoration: FormBorder.myDecoration(),
                    autofocus: false,
                  ),)

                ],
              ),
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text('Model')),
                  Flexible(flex: 1,child: TextFormField(
                    controller: _model,
                    validator: (value) => value.isEmpty ? 'this field is required' : null,
                    decoration: FormBorder.myDecoration(),
                    autofocus: false,
                  ),)

                ],
              ),
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text('Year')),
                  Flexible(flex: 1,child: TextFormField(
                    controller: _year,
                    validator: (value) => value.isEmpty ? 'this field is required' : null,
                    decoration: FormBorder.myDecoration(),
                    autofocus: false,
                    keyboardType: TextInputType.number,
                  ),)

                ],
              ),
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text('Colour')),
                  Flexible(flex: 1,child: DropdownButtonFormField(
                    decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                      hintText: 'RED',contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    ),
                    items: [
                      DropdownMenuItem(child: Text("RED"),value: "RED",),
                      DropdownMenuItem(child: Text("BLUE"),value: "BLUE",),
                      DropdownMenuItem(child: Text("YELLOW"),value: "YELLOW",)
                    ],
                    onChanged: (val)=>sorceNowProvider.color=val,
                  ),)

                ],
              ),
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text('Customer Name')),
                  Flexible(flex: 1,child: TextFormField(
                    controller: _customerName,
                    validator: (value) => value.isEmpty ? 'this field is required' : null,
                    decoration: FormBorder.myDecoration(),
                    autofocus: false,
                  ),)

                ],
              ),
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text('Address')),
                  Flexible(flex: 1,child: TextFormField(
                    controller: _address,
                    validator: (value) => value.isEmpty ? 'this field is required' : null,
                    decoration: FormBorder.myDecoration(),
                    autofocus: false,
                  ),)

                ],
              ),
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text('New Car Model')),
                  Flexible(flex: 1,child: TextFormField(
                    controller: _newCarModel,
                    validator: (value) => value.isEmpty ? 'this field is required' : null,
                    decoration: FormBorder.myDecoration(),
                    autofocus: false,
                  ),)

                ],
              ),
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text('Date Of Sourcing')),
                  Flexible(flex: 1,child: TextFormField(
                    controller: _dateOfSourcing,
                    validator: (value) => value.isEmpty ? 'this field is required' : null,
                    decoration: FormBorder.myDecoration(),
                    autofocus: false,
                  ),)

                ],
              ),
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text('MTV Buying Price')),
                  Flexible(flex: 1,child: TextFormField(
                    controller: _mtvPrice,
                    validator: (value) => value.isEmpty ? 'this field is required' : null,
                    decoration: FormBorder.myDecoration(),
                    keyboardType: TextInputType.number,
                    autofocus: false,
                  ),)

                ],
              ),
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text('Exchange Bonus')),
                  Flexible(flex: 1,child: TextFormField(
                    controller: _exchangeBonus,
                    validator: (value) => value.isEmpty ? 'this field is required' : null,
                    decoration: FormBorder.myDecoration(),
                    autofocus: false,
                    keyboardType: TextInputType.number,
                  ),)
                ],
              ),
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text('Total Price')),
                  Flexible(flex: 1,child: TextFormField(
                    controller: _totalPrice,
                    validator: (value) => value.isEmpty ? 'this field is required' : null,
                    decoration: FormBorder.myDecoration(),
                    autofocus: false,
                    keyboardType: TextInputType.number,
                  ),)

                ],
              ),
              SizedBox(height: 20,),
              Text("Documents/Items Recieved"),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                      Flexible(flex: 1,child: Text('RC Book')),
                        Flexible(flex: 1,
                          child: Row(children: [
                            Flexible(flex: 1,child:DropdownButtonFormField(
                              decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                                hintText: 'Select',contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                              ),items: [
                              DropdownMenuItem(child: Text("Yes"),value: "yes",),
                              DropdownMenuItem(child: Text("No"),value: "No",)
                            ],
                              onChanged: (val)=>sorceNowProvider.rcBook=val,
                            ),),
                            IconButton(icon: Icon(Icons.upload_file,color: Colors.black54,), onPressed: (){}),
                            Container(
                              decoration: BoxDecoration(shape: BoxShape.circle,color: APP_GREEN_COLOR,),
                              height: 25,
                              width: 25,
                              child: IconButton(icon: Icon(Icons.check,color: APP_WHITE_COLOR,size: 12,),onPressed: (){},),
                            )
                          ],),
                        )

                    ],
                  ),
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text('Insurance')),
                  Flexible(flex: 1,
                    child: Row(children: [
                      Flexible(flex: 1,child:DropdownButtonFormField(
                        decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                          hintText: 'Select',contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        ),items: [
                        DropdownMenuItem(child: Text("Yes"),value: "yes",),
                        DropdownMenuItem(child: Text("No"),value: "No",)
                      ],
                        onChanged: (val)=>sorceNowProvider.insurance=val,
                      ),),
                      IconButton(icon: Icon(Icons.upload_file,color: Colors.black54,), onPressed: (){}),
                      Container(
                        decoration: BoxDecoration(shape: BoxShape.circle,color: APP_GREEN_COLOR,),
                        height: 25,
                        width: 25,
                        child: IconButton(icon: Icon(Icons.check,color: APP_WHITE_COLOR,size: 12,),onPressed: (){},),
                      )
                    ],),
                  )
                ],
              ),
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text('Tax token')),
                  Flexible(flex: 1,
                    child: Row(children: [
                      Flexible(flex: 1,child:DropdownButtonFormField(
                        decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                          hintText: 'Select',contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        ),items: [
                        DropdownMenuItem(child: Text("Yes"),value: "yes",),
                        DropdownMenuItem(child: Text("No"),value: "No",)
                      ],
                        onChanged: (val)=>sorceNowProvider.taxToken=val,
                      ),),
                      IconButton(icon: Icon(Icons.upload_file,color: Colors.black54,), onPressed: (){}),
                      Container(
                        decoration: BoxDecoration(shape: BoxShape.circle,color: APP_GREEN_COLOR,),
                        height: 25,
                        width: 25,
                        child: IconButton(icon: Icon(Icons.check,color: APP_WHITE_COLOR,size: 12,),onPressed: (){},),
                      )
                    ],),
                  )

                ],
              ),
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text('PUC Certificate')),
                  Flexible(flex: 1,
                    child: Row(children: [
                      Flexible(flex: 1,child:DropdownButtonFormField(
                        decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                          hintText: 'Select',contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        ),items: [
                        DropdownMenuItem(child: Text("Yes"),value: "yes",),
                        DropdownMenuItem(child: Text("No"),value: "No",)
                      ],
                        onChanged: (val)=>sorceNowProvider.puCertificate=val,
                      ),),
                      IconButton(icon: Icon(Icons.upload_file,color: Colors.black54,), onPressed: (){}),
                      Container(
                        decoration: BoxDecoration(shape: BoxShape.circle,color: APP_GREEN_COLOR,),
                        height: 25,
                        width: 25,
                        child: IconButton(icon: Icon(Icons.check,color: APP_WHITE_COLOR,size: 12,),onPressed: (){},),
                      )
                    ],),
                  )

                ],
              ),
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text('Owners Manual')),
                  Flexible(flex: 1,
                    child: Row(children: [
                      Flexible(flex: 1,child:DropdownButtonFormField(
                        decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                          hintText: 'Select',contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        ),items: [
                        DropdownMenuItem(child: Text("Yes"),value: "yes",),
                        DropdownMenuItem(child: Text("No"),value: "No",)
                      ],
                        onChanged: (val)=>sorceNowProvider.ownersManual=val,
                      ),),
                      IconButton(icon: Icon(Icons.upload_file,color: Colors.black54,), onPressed: (){}),
                      Container(
                        decoration: BoxDecoration(shape: BoxShape.circle,color: APP_GREEN_COLOR,),
                        height: 25,
                        width: 25,
                        child: IconButton(icon: Icon(Icons.check,color: APP_WHITE_COLOR,size: 12,),onPressed: (){},),
                      )
                    ],),
                  )

                ],
              ),
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text('Duplicate keys')),
                  Flexible(flex: 1,
                    child: Row(children: [
                      Flexible(flex: 1,child:DropdownButtonFormField(
                        decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                          hintText: 'Select',contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        ),items: [
                        DropdownMenuItem(child: Text("Yes"),value: "yes",),
                        DropdownMenuItem(child: Text("No"),value: "No",)
                      ],
                        onChanged: (val)=>sorceNowProvider.duplicateKeys=val,
                      ),),
                      IconButton(icon: Icon(Icons.upload_file,color: Colors.black54,), onPressed: (){}),
                      Container(
                        decoration: BoxDecoration(shape: BoxShape.circle,color: APP_GREEN_COLOR,),
                        height: 25,
                        width: 25,
                        child: IconButton(icon: Icon(Icons.check,color: APP_WHITE_COLOR,size: 12,),onPressed: (){},),
                      )
                    ],),
                  )

                ],
              ),
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text('Loan preclosure statement')),
                  Flexible(flex: 1,
                    child: Row(children: [
                      Flexible(flex: 1,child:DropdownButtonFormField(
                        decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                          hintText: 'Select',contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        ),items: [
                        DropdownMenuItem(child: Text("Yes"),value: "yes",),
                        DropdownMenuItem(child: Text("No"),value: "No",)
                      ],
                        onChanged: (val)=>sorceNowProvider.loan=val,
                      ),),
                      IconButton(icon: Icon(Icons.upload_file,color: Colors.black54,), onPressed: (){}),
                      Container(
                        decoration: BoxDecoration(shape: BoxShape.circle,color: PRIMARY_COLOR,),
                        height: 25,
                        width: 25,
                        child: IconButton(icon: Icon(Icons.close,color: APP_WHITE_COLOR,size: 12,),onPressed: (){},),
                      )
                    ],),
                  )

                ],
              ),
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text('Form 35 & NOC')),
                  Flexible(flex: 1,
                    child: Row(children: [
                      Flexible(flex: 1,child:DropdownButtonFormField(
                        decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                          hintText: 'Select',contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        ),items: [
                        DropdownMenuItem(child: Text("Yes"),value: "yes",),
                        DropdownMenuItem(child: Text("No"),value: "No",)
                      ],
                        onChanged: (val)=>sorceNowProvider.form35=val,
                      ),),
                      IconButton(icon: Icon(Icons.upload_file,color: Colors.black54,), onPressed: (){}),
                      Container(
                        decoration: BoxDecoration(shape: BoxShape.circle,color: PRIMARY_COLOR,),
                        height: 25,
                        width: 25,
                        child: IconButton(icon: Icon(Icons.close,color: APP_WHITE_COLOR,size: 12,),onPressed: (){},),
                      )
                    ],),
                  )

                ],
              ),
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text('Tool kit')),
                  Flexible(flex: 1,
                    child: Row(children: [
                      Flexible(flex: 1,child:DropdownButtonFormField(
                        decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                          hintText: 'Select',contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        ),items: [
                        DropdownMenuItem(child: Text("Yes"),value: "yes",),
                        DropdownMenuItem(child: Text("No"),value: "No",)
                      ],
                        onChanged: (val)=>sorceNowProvider.toolkit=val,
                      ),),
                      IconButton(icon: Icon(Icons.upload_file,color: Colors.black54,), onPressed: (){}),
                      Container(
                        decoration: BoxDecoration(shape: BoxShape.circle,color: PRIMARY_COLOR,),
                        height: 25,
                        width: 25,
                        child: IconButton(icon: Icon(Icons.close,color: APP_WHITE_COLOR,size: 12,),onPressed: (){},),
                      )
                    ],),
                  )

                ],
              ),
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text('Form 60')),
                  Flexible(flex: 1,
                    child: Row(children: [
                      Flexible(flex: 1,child:DropdownButtonFormField(
                        decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                          hintText: 'Select',contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        ),items: [
                        DropdownMenuItem(child: Text("Yes"),value: "yes",),
                        DropdownMenuItem(child: Text("No"),value: "No",)
                      ],
                        onChanged: (val)=>sorceNowProvider.form60=val,
                      ),),
                      IconButton(icon: Icon(Icons.upload_file,color: Colors.black54,), onPressed: (){}),
                      Container(
                        decoration: BoxDecoration(shape: BoxShape.circle,color: PRIMARY_COLOR,),
                        height: 25,
                        width: 25,
                        child: IconButton(icon: Icon(Icons.close,color: APP_WHITE_COLOR,size: 12,),onPressed: (){},),
                      )
                    ],),
                  )

                ],
              ),
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text('Seller ID proof attested')),
                  Flexible(flex: 1,
                    child: Row(children: [
                      Flexible(flex: 1,child:DropdownButtonFormField(
                        decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                          hintText: 'Select',contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        ),items: [
                        DropdownMenuItem(child: Text("Yes"),value: "yes",),
                        DropdownMenuItem(child: Text("No"),value: "No",)
                      ],
                        onChanged: (val)=>sorceNowProvider.sellerId=val,
                      ),),
                      IconButton(icon: Icon(Icons.upload_file,color: Colors.black54,), onPressed: (){}),
                      Container(
                        decoration: BoxDecoration(shape: BoxShape.circle,color: PRIMARY_COLOR,),
                        height: 25,
                        width: 25,
                        child: IconButton(icon: Icon(Icons.close,color: APP_WHITE_COLOR,size: 12,),onPressed: (){},),
                      )
                    ],),
                  )

                ],
              ),
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text('Battery warranty card')),
                  Flexible(flex: 1,
                    child: Row(children: [
                      Flexible(flex: 1,child:DropdownButtonFormField(
                        decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                          hintText: 'Select',contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        ),items: [
                        DropdownMenuItem(child: Text("Yes"),value: "yes",),
                        DropdownMenuItem(child: Text("No"),value: "No",)
                      ],
                        onChanged: (val)=>sorceNowProvider.battery=val,
                      ),),
                      IconButton(icon: Icon(Icons.upload_file,color: Colors.black54,), onPressed: (){}),
                      Container(
                        decoration: BoxDecoration(shape: BoxShape.circle,color: APP_GREEN_COLOR,),
                        height: 25,
                        width: 25,
                        child: IconButton(icon: Icon(Icons.check,color: APP_WHITE_COLOR,size: 12,),onPressed: (){},),
                      )
                    ],),
                  )

                ],
              ),
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text('Odometer reading confirmation')),
                  Flexible(flex: 1,
                    child: Row(children: [
                      Flexible(flex: 1,child:DropdownButtonFormField(
                        decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                          hintText: 'Select',contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        ),items: [
                        DropdownMenuItem(child: Text("Yes"),value: "yes",),
                        DropdownMenuItem(child: Text("No"),value: "No",)
                      ],
                        onChanged: (val)=>sorceNowProvider.odometer=val,
                      ),),
                      IconButton(icon: Icon(Icons.upload_file,color: Colors.black54,), onPressed: (){}),
                      Container(
                        decoration: BoxDecoration(shape: BoxShape.circle,color: APP_GREEN_COLOR,),
                        height: 25,
                        width: 25,
                        child: IconButton(icon: Icon(Icons.check,color: APP_WHITE_COLOR,size: 12,),onPressed: (){},),
                      )
                    ],),
                  )

                ],
              ),
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 1,child: Text('Vehicle possession taken')),
                  Flexible(flex: 1,
                    child: Row(children: [
                      Flexible(flex: 1,child:DropdownButtonFormField(
                        decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: PRIMARY_COLOR,width: 1)),
                          hintText: 'Select',contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        ),items: [
                        DropdownMenuItem(child: Text("Yes"),value: "yes",),
                        DropdownMenuItem(child: Text("No"),value: "No",)
                      ],
                        onChanged: (val)=>sorceNowProvider.vehicle=val,
                      ),),
                      IconButton(icon: Icon(Icons.upload_file,color: Colors.black54,), onPressed: (){}),
                      Container(
                        decoration: BoxDecoration(shape: BoxShape.circle,color: APP_GREEN_COLOR,),
                        height: 25,
                        width: 25,
                        child: IconButton(icon: Icon(Icons.check,color: APP_WHITE_COLOR,size: 12,),onPressed: (){},),
                      )
                    ],),
                  )

                ],
              ),
              SizedBox(height: 10,),
              FlatButton(height: 50,minWidth: MediaQuery.of(context).size.width*0.75,color: PRIMARY_COLOR,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),onPressed: (){}, child: Text("SOURCE NOW",style: AppFontStyle.appBarTittle(APP_WHITE_COLOR),)),
              SizedBox(height: 10,),



            ],
          ),
        ),
      ),
    );
  }
}
