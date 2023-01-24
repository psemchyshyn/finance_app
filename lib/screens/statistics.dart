import 'package:finance_app/main.dart';
import 'package:finance_app/widgets/bottom_nav_bar.dart';
import 'package:finance_app/widgets/expense_income.dart';
import 'package:finance_app/widgets/plot_legends.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../widgets/plot.dart';

class Statistics extends StatelessWidget {

  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, 
        backgroundColor: Colors.pink,
        child: Icon(Icons.monetization_on, size: 32),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text('Statistic', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black, decoration: TextDecoration.none)),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Balance', style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w300, decoration: TextDecoration.none),),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('\$ 23424.234', style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w700, decoration: TextDecoration.none),),
                ],
              ),
              ExpenseIncomePlotWidget(),
              Container(
                // decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                padding: EdgeInsets.only(left: 24),
                child: Row(children: 
                  [
                    PlotLegends(name: "Income", boxColor: Color(0xff0e0023)),
                    PlotLegends(name: "Expense", boxColor: Color(0xff6f12f6)),
                  ]
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ExpenseIncomeWidget(name: "Income", number: 23434, icon: Icon(Icons.arrow_upward, color: Color(0xff0e0023)), backgroundPath: "assets/dark-purple-texture-with-financial-symbols-vector.jpg"), 
                  ExpenseIncomeWidget(name: "Expense", number: 123884, icon: Icon(Icons.arrow_downward, color: Color(0xff6f12f6)), backgroundPath: "assets/dark-purple-texture-with-financial-symbols-vector.webp",), 
                ],
                )
            ],
          )
    )
    );
  }
}
