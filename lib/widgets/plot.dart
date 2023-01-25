import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

// Credit: https://dribbble.com/shots/10072126-Heeded-Dashboard
class ExpenseIncomePlotWidget extends StatelessWidget {
  const ExpenseIncomePlotWidget({super.key});

  static const incomeColor = Color(0xff0e0023);
  static const expenseColor = Color(0xff6f12f6);
  static const betweenSpace = 0.4;

  BarChartGroupData generateGroupData(int x, double income, double expense) {

    const double? width = 5;
    const double? barSpace = 1;


    return BarChartGroupData(
      barsSpace: barSpace,
      x: x,
      barRods: [
        BarChartRodData(
          fromY: 0,
          toY: income,
          color: incomeColor,
          width: width,
        ),
        BarChartRodData(
          fromY: 0,
          toY: expense,
          color: expenseColor,
          width: width,
        ),
      ],
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(color: Color(0xff787694), fontSize: 10);
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'JAN';
        break;
      case 1:
        text = 'FEB';
        break;
      case 2:
        text = 'MAR';
        break;
      case 3:
        text = 'APR';
        break;
      case 4:
        text = 'MAY';
        break;
      case 5:
        text = 'JUN';
        break;
      case 6:
        text = 'JUL';
        break;
      case 7:
        text = 'AUG';
        break;
      case 8:
        text = 'SEP';
        break;
      case 9:
        text = 'OCT';
        break;
      case 10:
        text = 'NOV';
        break;
      case 11:
        text = 'DEC';
        break;
      default:
        text = '';
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: style),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Overview',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                ),
                            ),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black)
                  ),
                  child: Row(
                    children: [
                      Text("Month", style: TextStyle(fontSize: 10)),
                      Icon(Icons.arrow_drop_down)
                    ],
                  )
                )
              ],),
            const SizedBox(height: 14),
            AspectRatio(
              aspectRatio: 1,
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceBetween,
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(),
                    rightTitles: AxisTitles(),
                    topTitles: AxisTitles(),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: bottomTitles,
                        reservedSize: 18,
                      ),
                    ),
                  ),
                  barTouchData: BarTouchData(enabled: false),
                  borderData: FlBorderData(show: false),
                  gridData: FlGridData(show: false),
                  barGroups: [
                    generateGroupData(0, 2, 3),
                    generateGroupData(1, 2, 5),
                    generateGroupData(2, 1.3, 3.1),
                    generateGroupData(3, 3.1, 4),
                    generateGroupData(4, 0.8, 3.3),
                    generateGroupData(5, 2, 5.6),
                    generateGroupData(6, 1.3, 3.2),
                    generateGroupData(7, 2.3, 3.2),
                    generateGroupData(8, 2, 4.8),
                    generateGroupData(9, 1.2, 3.2),
                    generateGroupData(10, 1, 4.8),
                    generateGroupData(11, 2, 4.4),
                  ],
                  maxY: 5 + (betweenSpace * 3),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}