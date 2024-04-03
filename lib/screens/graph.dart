import 'package:assessment_application_1/graph/bar_graph.dart';
import 'package:flutter/material.dart';

class MyGraph extends StatelessWidget {
  const MyGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Text("My Expense Graph"),
        SizedBox(height: 250,),
        Container(
          height: 400,
          width: double.infinity,
          child: MyBarGraph(
            maxY: 2000, 
            sunAmount: 1200, 
            monAmount: 200, 
            tueAmount: 1500, 
            wedAmount: 2000, 
            thurAmount: 500, 
            friAmount: 1100, 
            satAmount: 200),
        ),
      ],
    );
  }
}