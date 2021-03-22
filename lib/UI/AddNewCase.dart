import 'package:eval_wire_frame/Provider/form_data_provider.dart';
import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:eval_wire_frame/widgets/AcessoryDetails.dart';
import 'package:eval_wire_frame/widgets/CustomerDetails.dart';
import 'package:eval_wire_frame/widgets/DocumentDetail.dart';
import 'package:eval_wire_frame/widgets/Documents.dart';
import 'package:eval_wire_frame/widgets/EvaluationDetails.dart';
import 'package:eval_wire_frame/widgets/ExteriorTyres.dart';
import 'package:eval_wire_frame/widgets/InsuranceDetails.dart';
import 'package:eval_wire_frame/widgets/Registration_Details.dart';
import 'package:eval_wire_frame/widgets/RfCostSummary.dart';
import 'package:eval_wire_frame/widgets/appBar.dart';
import 'package:eval_wire_frame/widgets/electricals.dart';
import 'package:eval_wire_frame/widgets/engine_transmission.dart';
import 'package:eval_wire_frame/widgets/otherDetails.dart';
import 'package:eval_wire_frame/widgets/steering_suspension.dart';
import 'package:eval_wire_frame/widgets/vehicleDetails.dart';
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
            physics: NeverScrollableScrollPhysics(),
            type: FAStepperType.vertical,
            currentStep: formData.stepCount,
            onStepTapped: (value)=> changeStep(value, formData),
            steps: [
              FAStep(state: formData.activeStep>0?FAStepstate.complete:FAStepstate.editing,title: Text("Registration Details",), content: RegistrationDetails(), isActive: formData.stepCount==0),
               FAStep(state: formData.activeStep>1?FAStepstate.complete:FAStepstate.editing,title: Text("Vehicle Details"), content: VehicleDetails(), isActive: formData.stepCount==1),
              FAStep(state: formData.activeStep>2?FAStepstate.complete:FAStepstate.editing,title: Text("Other Details"), content: OtherDetails(), isActive: formData.stepCount==2),
              FAStep(state: formData.activeStep>3?FAStepstate.complete:FAStepstate.editing,title: Text("Customer Details"), content: CustomerDetails(), isActive: formData.stepCount==3),
              FAStep(state: formData.activeStep>4?FAStepstate.complete:FAStepstate.editing,title: Text("Insurance Details"), content: InsuranceDetails(), isActive: formData.stepCount==4),
              FAStep(state: formData.activeStep>5?FAStepstate.complete:FAStepstate.editing,title: Text("Document Details"), content: DocumentDetail(), isActive: formData.stepCount==5),
              FAStep(state: formData.activeStep>6?FAStepstate.complete:FAStepstate.editing,title: Text("Exterior + Tyres"), content: ExteriorTyres(), isActive: formData.stepCount==6),
              FAStep(state: formData.activeStep>7?FAStepstate.complete:FAStepstate.editing,title: Text("Electrical + Interior"), content: Electricals(), isActive: formData.stepCount==7),
              FAStep(state: formData.activeStep>8?FAStepstate.complete:FAStepstate.editing,title: Text("Engine + Transmission + AC"), content: EngineTransmission(), isActive: formData.stepCount==8),
              FAStep(state: formData.activeStep>9?FAStepstate.complete:FAStepstate.editing,title: Text("Steering + Suspension + Brakes"), content: SteeringSuspension(), isActive: formData.stepCount==9),
              FAStep(state: formData.activeStep>10?FAStepstate.complete:FAStepstate.editing,title: Text("RF Cost Summary"), content: RfCost(), isActive: formData.stepCount==10),
              FAStep(state: formData.activeStep>11?FAStepstate.complete:FAStepstate.editing,title: Text("Accessory Details"), content: AccessoryDetails(), isActive: formData.stepCount==11),
              FAStep(state: formData.activeStep>12?FAStepstate.complete:FAStepstate.editing,title: Text("Documents"), content: Documents(), isActive: formData.stepCount==12),
              FAStep(state: formData.activeStep>13?FAStepstate.complete:FAStepstate.editing,title: Text("Evaluation Details"), content: EvaluationDetails(), isActive: formData.stepCount==13),

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
