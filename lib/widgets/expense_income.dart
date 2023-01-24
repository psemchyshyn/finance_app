import 'package:flutter/material.dart';

class ExpenseIncomeWidget extends StatelessWidget {
  final String name;
  final int number;
  final Icon icon;
  final String backgroundPath;
  ExpenseIncomeWidget({super.key, required this.name, required this.number, required this.icon, required this.backgroundPath});

  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 160,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(backgroundPath),
          fit: BoxFit.cover
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white
              ),
            child: icon,
          ),
          Column(
            children: [
                Text(name, style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400 ,color: Colors.white, decoration: TextDecoration.none)),
                SizedBox(height: 10),
                Text("\$ $number", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900, color: Colors.white, decoration: TextDecoration.none))
            ],
          )
        ],
      ),
    );
  }
}