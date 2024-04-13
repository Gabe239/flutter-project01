import 'package:flutter/material.dart';
import 'package:test2/components/headerRow.dart';
import 'package:test2/components/recent.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.black,
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderRow(),
                  Recent()
                ],
              ), // Column
            ],
          ) // ListView
          ),
    );
  }
}
