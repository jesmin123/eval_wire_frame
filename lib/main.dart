
import 'package:eval_wire_frame/Provider/AccessoryProvider.dart';
import 'package:eval_wire_frame/Provider/CustomerDetailsProvider.dart';
import 'package:eval_wire_frame/Provider/DocumentDetailProvider.dart';
import 'package:eval_wire_frame/Provider/ElectricalProvider.dart';
import 'package:eval_wire_frame/Provider/EngineProvider.dart';
import 'package:eval_wire_frame/Provider/ExteriorTyresProvider.dart';
import 'package:eval_wire_frame/Provider/RegistrationDetailProvider.dart';
import 'package:eval_wire_frame/Provider/SteeringProvider.dart';
import 'package:eval_wire_frame/Provider/otherDetailsProvider.dart';
import 'package:eval_wire_frame/Provider/vehicleDetailsProvider.dart';
import 'package:eval_wire_frame/UI/AddNewCase.dart';
import 'package:eval_wire_frame/UI/assignedCases.dart';
import 'package:eval_wire_frame/UI/channelWiseSourcing.dart';
import 'package:eval_wire_frame/UI/dealOkCases.dart';
import 'package:eval_wire_frame/UI/documentsPending.dart';
import 'package:eval_wire_frame/UI/fundTransfers.dart';
import 'package:eval_wire_frame/UI/junkLeads.dart';
import 'package:eval_wire_frame/UI/leadsBreakUp.dart';
import 'package:eval_wire_frame/UI/myAppointments.dart';
import 'package:eval_wire_frame/UI/pendingCases.dart';
import 'package:eval_wire_frame/UI/priceNegotiation.dart';
import 'package:eval_wire_frame/UI/sourced.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider/InsuranceProvider.dart';
import 'Provider/form_data_provider.dart';
import 'UI/homePage.dart';
import 'constants/strings.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    HOME_PAGE : (context)=> HomePage(),
    DEAL_OK_CASE: (context)=>DealOkCases(),
    PENDING_CASES:(context)=>PendingCases(),
    ASSIGNED_CASES:(context)=>AssignedCases(),
    JUNK_LEADS:(context)=>JunkLeads(),
    FUND_TRANSFERS:(context)=>FundTransfers(),
    LEADS_BREAK_UP:(context)=>LeadsBreakUp(),
    CHANNEL_WISE:(context)=>ChannelWiseSourcing(),
    PRICE_NEGOTIATION:(context)=>PriceNegotiation(),
    SOURCED:(context)=>Sourced(),
    DOCUMENTS_PENDING:(context)=>DocumentsPending(),
    MY_APPOINTMENTS:(context)=>MyAppointments(),
    NEW_ENQUIRY_PAGE:(context)=>AddNewCase(),


  };
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<FormData>(create: (_)=>FormData()),
    ChangeNotifierProvider<RegistrationDetailProvider>(create: (_)=>RegistrationDetailProvider()),
        ChangeNotifierProvider<VehicleDetailProvider>(create: (_)=>VehicleDetailProvider()),
        ChangeNotifierProvider<OtherDetailsProvider>(create: (_)=>OtherDetailsProvider()),
        ChangeNotifierProvider<CustomerDetailsProvider>(create: (_)=>CustomerDetailsProvider()),
        ChangeNotifierProvider<InsuranceProvider>(create: (_)=>InsuranceProvider()),
        ChangeNotifierProvider<DocumentProvider>(create: (_)=>DocumentProvider()),
        ChangeNotifierProvider<ExteriorTyresProvider>(create: (_)=>ExteriorTyresProvider()),
        ChangeNotifierProvider<ElectricProvider>(create: (_)=>ElectricProvider()),
        ChangeNotifierProvider<EngineProvider>(create: (_)=>EngineProvider()),
        ChangeNotifierProvider<SteeringProvider>(create: (_)=>SteeringProvider()),
        ChangeNotifierProvider<AccessoryProvider>(create: (_)=>AccessoryProvider()),

      ],
      child: MaterialApp(
        title: 'Evaluator App',
        theme: ThemeData(
            backgroundColor: Colors.white,
            primarySwatch: Colors.red,
            visualDensity: VisualDensity.adaptivePlatformDensity
        ),
        routes: routes,
        initialRoute: HOME_PAGE,

      ),
    );
  }
  }

