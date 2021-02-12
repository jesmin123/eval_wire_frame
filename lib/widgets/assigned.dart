import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:flutter/material.dart';
class Assigned extends StatefulWidget {
  @override
  _AssignedState createState() => _AssignedState();
}

class _AssignedState extends State<Assigned> {
  @override
  Widget build(BuildContext context) {
    return  Card(
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
              trailing: Padding(
                padding: const EdgeInsets.only( top: 16),
                child: Icon(Icons.arrow_forward_ios,color: PRIMARY_COLOR,),
              ),
            ),
          ),

        )
    );
  }
}
