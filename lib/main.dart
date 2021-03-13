import 'package:flutter/material.dart';
import 'package:ui_4/data.dart';
import 'package:ui_4/widgets/cardSection.dart';
import 'package:ui_4/widgets/header.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Circular'),
      home: Scaffold(
          backgroundColor: primaryColor,
          body: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 120,
                child: WalletHeader(),
              ),
              Container(
                height: 500,
                width: 500,
                child: CardSection(),
              ),
            ],
          )),
    );
  }
}
