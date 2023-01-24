

import 'package:flutter/material.dart';

class PlotLegends extends StatelessWidget {
  final String name;
  final Color boxColor;
  const PlotLegends({super.key, required this.name, required this.boxColor});

  Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.only(right: 10),
        child: Row(
        children: 
            [
              Text(name, style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Colors.grey, decoration: TextDecoration.none)),
              Container(
                width: 8,
                margin: const EdgeInsets.all(3),
                height: 8,
                decoration: BoxDecoration(
                  color: boxColor,
                  borderRadius: BorderRadius.circular(1)
                ))
            ],
          )
        );
  }
}