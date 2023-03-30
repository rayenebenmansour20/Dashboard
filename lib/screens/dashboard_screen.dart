import 'package:firstapp/components/dashboardcontent.dart';
import 'package:firstapp/components/sidemenu.dart';
import 'package:flutter/material.dart';


import 'package:provider/provider.dart';

import '../constants/constants.dart';
import '../constants/responsive.dart';
import '../controllers/sidemenucontroller.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      drawer: const Sidemenu(),
      key: context.read<Controller>().scaffoldKey,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context)) const Expanded(child: Sidemenu(),),
            const Expanded(
              flex: 5,
              child: DashboardContent(),
            )
          ],
        ),
      ),
    );
  }
}
