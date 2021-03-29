import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:eval_wire_frame/constants/dimens.dart';
import 'package:eval_wire_frame/constants/strings.dart';
import 'package:eval_wire_frame/widgets/DealOkWidget.dart';
import 'package:eval_wire_frame/widgets/appBar.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';


class DealOkCases extends StatefulWidget {
  @override
  _DealOkCasesState createState() => _DealOkCasesState();
}

class _DealOkCasesState extends State<DealOkCases> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: APP_WHITE_COLOR,
        appBar: MAppBar(),
        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(DEAL_OK_CASE,style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index){
                          return Padding(
                            padding: const EdgeInsets.only(top:8.0),
                            child: DealOk(),
                          );

                        })

                  ]),
            )
        )
    );
  }
}
