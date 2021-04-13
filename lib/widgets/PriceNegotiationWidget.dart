import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:flutter/material.dart';
class PriceWidget extends StatefulWidget {
  @override
  _PriceWidgetState createState() => _PriceWidgetState();
}

class _PriceWidgetState extends State<PriceWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        child:ClipPath(
          clipper: ShapeBorderClipper(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          child: Container(
            decoration: BoxDecoration(
                border: Border(left: BorderSide(color: PRIMARY_COLOR,width: 15,))
            ),
            child: ListTile(
              title: Text('Maruti Alto',style:AppFontStyle.appBarTittle(APP_BLACK_COLOR) ,),

              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('KL-05-336'),
                  SizedBox(height: 6,),
                  Text('Aby Thomas',),
                  SizedBox(height: 4,),
                  Text('Kaloor, Eranakulam',),
                ],
              ),
              trailing: Column(
                children: [
                  Text("Expected Price: 3.5L",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),),
                  Text("Quoted Price: 3.7L",style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR),),
                  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle,color: APP_GREEN_COLOR,),
                    height: 10,
                    width:10,
                    child: Icon(Icons.check,color: APP_WHITE_COLOR,size: 5,),
                  ),
                  Text('Update Price',style: AppFontStyle.bodyTextStyle(PRIMARY_COLOR),)

                ],
              ),
            ),
          ),

        )
    );
  }
}
