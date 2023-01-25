import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  Widget build(BuildContext context) {

    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: () {Navigator.pushNamed(context, "/");}, icon: Icon(Icons.home)), 
          IconButton(onPressed: () {Navigator.pushNamed(context, "/statistics");}, icon: Icon(Icons.data_array)), 
          IconButton(onPressed: () {Navigator.pushNamed(context, "/info");}, icon: Icon(Icons.info)), 
          IconButton(onPressed: () {Navigator.pushNamed(context, "/contacts");}, icon: Icon(Icons.person)), 
        ],
      ),
    );
  }
}