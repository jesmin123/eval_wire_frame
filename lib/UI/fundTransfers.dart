import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:eval_wire_frame/constants/strings.dart';
import 'package:eval_wire_frame/widgets/FundTransferWidget.dart';
import 'package:eval_wire_frame/widgets/appBar.dart';
import 'package:flutter/material.dart';

class FundTransfers extends StatefulWidget {
  @override
  _FundTransfersState createState() => _FundTransfersState();
}

class _FundTransfersState extends State<FundTransfers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(FUND_TRANSFERS,style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),),

           ListView.builder(
               itemCount: 5,
               shrinkWrap: true,
               itemBuilder: (BuildContext context, int index){
                 return FundTransferWidget();

               })


          ],
        ),
      ),
    );
  }
}
