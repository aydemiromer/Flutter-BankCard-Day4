import 'package:flutter/material.dart';
import 'package:ui_4/data.dart';
import 'package:ui_4/widgets/cardDetails.dart';

class CardSection extends StatelessWidget {
  const CardSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.topLeft,
          child: Text(
            ' Card Selected',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, i) {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  color: primaryColor,
                  boxShadow: customShadow,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                        left: -400,
                        top: -100,
                        child: Container(
                            decoration: BoxDecoration(
                          boxShadow: customShadow,
                          shape: BoxShape.circle,
                          color: Colors.white38,
                        ))),
                    Positioned.fill(
                        right: -400,
                        top: 100,
                        bottom: -400,
                        child: Container(
                            decoration: BoxDecoration(
                          boxShadow: customShadow,
                          shape: BoxShape.circle,
                          color: Colors.white38,
                        ))),
                    CardDetails(),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
