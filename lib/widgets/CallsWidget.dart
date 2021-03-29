import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:flutter/material.dart';
class CallsWidget extends StatefulWidget {
  @override
  _CallsWidgetState createState() => _CallsWidgetState();
}

class _CallsWidgetState extends State<CallsWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Card(
          child: ExpansionTile(
            title: Text('John Varkey',style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),),
            subtitle: Text('RS: 3.7L'),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle,color: PRIMARY_COLOR),
                height: 30,
                width: 30,
                child: Icon(Icons.phone_forwarded_outlined,size: 20,color: APP_WHITE_COLOR,),
              ),
            ),
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Enquiry date:'),
                    SizedBox(width: 6,),
                    Text("15 OCT 2020")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Last Updated:'),
                    SizedBox(width: 6,),
                    Text("15 OCT 2020"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Vehicle info:'),
                    SizedBox(width: 6,),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  Column(
                    children: [
                      Text('MARUTI SUZUKI ALTO'),
                      SizedBox(height: 4,),
                      Text('LXI, 2015')
                    ],
                  ),
                  Column(
                    children: [
                      Text('1000 KMS'),
                      SizedBox(height: 4,),
                      Text('Petrol')
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Customer Details:'),
                    SizedBox(width: 6,),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Text('Skyline, Kaloor'),
                  SizedBox(height: 4,),
                  Text('Kochi')
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Options:'),
                    SizedBox(width:  4,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(shape: BoxShape.circle,color: APP_GREEN_COLOR,),
                          height: 50,
                          width: 50,
                          child: Icon(Icons.check,color: APP_WHITE_COLOR,),
                        ),
                        Text("Block visit",style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),),
                        Text(" for Evaluation",style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),)
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(shape: BoxShape.circle,color: PRIMARY_COLOR,),
                          height: 50,
                          width: 50,
                          child: Icon(Icons.close_outlined,color: APP_WHITE_COLOR,size: 30,),
                        ),
                        Text("Move to",style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),),
                        Text("Junk Leads",style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),)
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blue,),
                          height: 50,
                          width: 50,
                          child: Icon(Icons.refresh_outlined,color: APP_WHITE_COLOR,size: 30,),
                        ),
                        Text("Reschedule",style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),),
                        Text("Call",style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),),

                      ],
                    )
                  ],
                ),
              ),
            ],



          ),
        ),
        Card(
          child: ExpansionTile(
            title: Text('John Varkey',style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),),
            subtitle: Text('RS: 3.7L'),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle,color: PRIMARY_COLOR),
                height: 30,
                width: 30,
                child: Icon(Icons.phone_forwarded_outlined,size: 20,color: APP_WHITE_COLOR,),
              ),
            ),
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Cases Added:'),
                    SizedBox(width: 6,),
                    Text("15 OCT 2020")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Last Updated:'),
                    SizedBox(width: 6,),
                    Text("15 OCT 2020"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Vehicle info:'),
                    SizedBox(width: 6,),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  Column(
                    children: [
                      Text('MARUTI SUZUKI ALTO'),
                      SizedBox(height: 4,),
                      Text('LXI, 2015')
                    ],
                  ),
                  Column(
                    children: [
                      Text('1000 KMS'),
                      SizedBox(height: 4,),
                      Text('Petrol')
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Customer Details:'),
                    SizedBox(width: 6,),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Text('Skyline, Kaloor'),
                  SizedBox(height: 4,),
                  Text('Kochi')
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Options:'),
                    SizedBox(width:  4,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(shape: BoxShape.circle,color: APP_GREEN_COLOR,),
                          height: 50,
                          width: 50,
                          child: Icon(Icons.check,color: APP_WHITE_COLOR,),
                        ),
                        Text("Block visit",style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),),
                        Text(" for Evaluation",style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),)
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(shape: BoxShape.circle,color: PRIMARY_COLOR,),
                          height: 50,
                          width: 50,
                          child: Icon(Icons.close_outlined,color: APP_WHITE_COLOR,size: 30,),
                        ),
                        Text("Move to",style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),),
                        Text("Junk Leads",style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),)
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blue,),
                          height: 50,
                          width: 50,
                          child: Icon(Icons.refresh_outlined,color: APP_WHITE_COLOR,size: 30,),
                        ),
                        Text("Reschedule",style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),),
                        Text("Call",style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),),

                      ],
                    )
                  ],
                ),
              ),
            ],



          ),
        ),
        Card(
          child: ExpansionTile(
            title: Text('John Varkey',style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),),
            subtitle: Text('RS: 3.7L'),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle,color: PRIMARY_COLOR),
                height: 30,
                width: 30,
                child: Icon(Icons.phone_forwarded_outlined,size: 20,color: APP_WHITE_COLOR,),
              ),
            ),
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Cases Added:'),
                    SizedBox(width: 6,),
                    Text("15 OCT 2020")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Last Updated:'),
                    SizedBox(width: 6,),
                    Text("15 OCT 2020"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Vehicle info:'),
                    SizedBox(width: 6,),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  Column(
                    children: [
                      Text('MARUTI SUZUKI ALTO'),
                      SizedBox(height: 4,),
                      Text('LXI, 2015')
                    ],
                  ),
                  Column(
                    children: [
                      Text('1000 KMS'),
                      SizedBox(height: 4,),
                      Text('Petrol')
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Customer Details:'),
                    SizedBox(width: 6,),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Text('Skyline, Kaloor'),
                  SizedBox(height: 4,),
                  Text('Kochi')
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Options:'),
                    SizedBox(width:  4,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(shape: BoxShape.circle,color: APP_GREEN_COLOR,),
                          height: 50,
                          width: 50,
                          child: Icon(Icons.check,color: APP_WHITE_COLOR,),
                        ),
                        Text("Block visit",style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),),
                        Text(" for Evaluation",style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),)
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(shape: BoxShape.circle,color: PRIMARY_COLOR,),
                          height: 50,
                          width: 50,
                          child: Icon(Icons.close_outlined,color: APP_WHITE_COLOR,size: 30,),
                        ),
                        Text("Move to",style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),),
                        Text("Junk Leads",style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),)
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blue,),
                          height: 50,
                          width: 50,
                          child: Icon(Icons.refresh_outlined,color: APP_WHITE_COLOR,size: 30,),
                        ),
                        Text("Reschedule",style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),),
                        Text("Call",style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),),

                      ],
                    )
                  ],
                ),
              ),
            ],



          ),
        ),
      ],
    );
  }
}
