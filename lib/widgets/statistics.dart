import 'package:flutter/material.dart';
import 'package:medical_app/constants.dart';

class Statistics extends StatelessWidget {
  final int number;
  final Color color;
  final String title;

  const Statistics({Key? key, required this.title, required this.number, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height; // getting screen height
    var width = MediaQuery.of(context).size.width; // getting screen width

    return Column(
      children: [
        // A container which nests another container: for circular item in this column
        Container(
          padding: EdgeInsets.all(5),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(.26), 
          ),
          // Nested container
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(
                width: 2,
                color: color,
              ),
            ),
          ),
        ),
        SizedBox(height: height*0.02/2),
        // Counter number
        Text(
          number.toString(),
          style: TextStyle(
            fontSize: height*0.06,
            letterSpacing: 2.0,
            color: color,
          ),
        ),
        // Counter description
        Text(
          title, 
          style: AppConstants.kSubTextStyle.copyWith(fontSize: height*0.025)
        )
      ],
    );
  }
}