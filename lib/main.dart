import 'package:dashboard/components/analytic_cards.dart';
import 'package:dashboard/components/bar_chart.dart';
import 'package:dashboard/components/header.dart';
import 'package:dashboard/components/sidemenu.dart';
import 'package:dashboard/components/viewers.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'components/top_referals.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Row(
          children: [
            Expanded(
              child: Sidemenu(),
            ),
            Expanded(
              flex: 5,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(width:defaultPadding,height:defaultPadding),
                    Header(),
                    AnalyticCards(),
                    BarChartSample3(),
                    Viewers(),
                    TopReferals(),
                  ],
                ),
              ),
            ),
          ],
        )));
  }
}
