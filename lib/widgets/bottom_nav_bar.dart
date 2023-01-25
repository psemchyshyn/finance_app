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
          IconButton(onPressed: () {Navigator.pushNamed(context, "/contacts");}, icon: Icon(Icons.person)), 
          IconButton(onPressed: () {Navigator.pushNamed(context, "/send_to");}, icon: Icon(Icons.access_alarm)), 
        ],
      ),
    );
  }
}