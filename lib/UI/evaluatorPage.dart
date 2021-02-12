import 'package:cached_network_image/cached_network_image.dart';
import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:eval_wire_frame/constants/dimens.dart';
import 'package:flutter/material.dart';


class EvaluatorPage extends StatefulWidget {
  @override
  _EvaluatorPageState createState() => _EvaluatorPageState();
}

class _EvaluatorPageState extends State<EvaluatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool innerBoxlsScrolled){
                return<Widget>[
                  SliverAppBar(
                    expandedHeight: MediaQuery.of(context).size.height*0.5,
                    floating: false,
                    pinned: true,
                    backgroundColor: APP_WHITE_COLOR,
                    leading: IconButton(icon: Icon(Icons.clear, color: APP_BLACK_COLOR,), onPressed: (){
                      Navigator.pop(context);
                    }),
                    flexibleSpace: FlexibleSpaceBar(
                      background: CachedNetworkImage(imageUrl: "https://www.adbasis.com/images/divita-a65623c8.jpg", fit: BoxFit.cover,),
                    ),
                  )
                ];
              },
              body: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Text("Adam Smith",
                        style: AppFontStyle.regularTextStyle2(APP_BLACK_COLOR,
                            textSize: 22.0)),
                    Text(
                      "Team Lead",
                      style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),
                    ),
                    SizedBox(height: LINE_HEIGHT,),
                    Row(
                      children: [
                        InkWell(
                          child: CircleAvatar(
                            backgroundColor: PRIMARY_COLOR,
                            radius: 20,
                            child: Icon(Icons.add_ic_call_outlined, color: APP_WHITE_COLOR, size: ICON_SIZE,),
                          ),

                        ),
                        SizedBox(width: 20,),
                        Text('Make a Call', style: AppFontStyle.regularTextStyle2(APP_BLACK_COLOR,
                            textSize: 20.0),),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: PRIMARY_COLOR,
                          radius: 20,
                          child: Icon(Icons.message_rounded, color: APP_WHITE_COLOR, size: ICON_SIZE,),
                        ),
                        SizedBox(width: 20,),
                        Text('Send SMS', style: AppFontStyle.regularTextStyle2(APP_BLACK_COLOR,
                            textSize: 20.0),),
                      ],
                    )
                  ],
                ),
              ),
            )
        )
    );
  }
}