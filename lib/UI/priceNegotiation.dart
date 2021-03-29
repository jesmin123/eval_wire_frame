import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:eval_wire_frame/constants/strings.dart';
import 'package:eval_wire_frame/widgets/PriceNegotiationWidget.dart';
import 'package:eval_wire_frame/widgets/appBar.dart';
import 'package:flutter/material.dart';

class PriceNegotiation extends StatefulWidget {
  @override
  _PriceNegotiationState createState() => _PriceNegotiationState();
}

class _PriceNegotiationState extends State<PriceNegotiation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(PRICE_NEGOTIATION,style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),),

           ListView.builder(
               shrinkWrap: true,
               itemCount: 5,
               itemBuilder:(BuildContext context,int index){

                 return Padding(
                   padding: const EdgeInsets.only(top:8.0),
                   child: PriceWidget(),
                 );
               } )

          ],
        ),
      ),
    );
  }
}
