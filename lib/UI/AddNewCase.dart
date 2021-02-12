import 'package:eval_wire_frame/Provider/form_data_provider.dart';
import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:eval_wire_frame/widgets/Registration_Details.dart';
import 'package:eval_wire_frame/widgets/appBar.dart';
import 'package:eval_wire_frame/widgets/visitWidget.dart';
import 'package:fa_stepper/fa_stepper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class AddNewCase extends StatefulWidget {
  @override
  _AddNewCaseState createState() => _AddNewCaseState();
}

class _AddNewCaseState extends State<AddNewCase> {

  @override
  Widget build(BuildContext context) {
    FormData formData = Provider.of(context);
    return  Scaffold(
        appBar: MAppBar(),
    body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Add New Case',style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),),
                Row(
                  children: [
                    Text('0 Photos'),
                    SizedBox(width: 4,),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(shape: BoxShape.circle,color: PRIMARY_COLOR),
                      child: Icon(Icons.camera_alt,color: APP_WHITE_COLOR,),
                    )
                  ],
                ),

              ],
            ),
          ),
          FAStepper(
            type: FAStepperType.vertical,
            currentStep: formData.activeStep,
            onStepTapped: (value){changeStep(value, formData);
            formData.activeStep=value;},
            steps: [
              FAStep(state: formData.activeStep>0?FAStepstate.complete:FAStepstate.editing,title: Text("Registration Details"), content: RegistrationDetails(), isActive: formData.stepCount==0),
               FAStep(state: formData.activeStep>1?FAStepstate.complete:FAStepstate.editing,title: Text("Vehicle Details"), content: VisitsWidget(), isActive: formData.stepCount==1),
            ],
            controlsBuilder: (BuildContext context ,{VoidCallback onStepContinue, VoidCallback onStepCancel})=> Container(),
          )
         
        ],
      )
    ),
    );
  }
}

void changeStep(int value, FormData formData) {
  formData.stepCount = value;
}
