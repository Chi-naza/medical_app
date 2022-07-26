import 'package:flutter/material.dart';
import 'package:medical_app/constants.dart';

class SymptomCard extends StatelessWidget {
  final String symptomText;
  final String image;
  final bool isActive;
  
  const SymptomCard({Key? key, required this.symptomText, required this.image, this.isActive=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height; // getting screen height
    var width = MediaQuery.of(context).size.width; // getting screen width

    return Container(
      margin: EdgeInsets.symmetric(horizontal: height*0.009),
      padding: EdgeInsets.all(height*0.01),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          isActive?
          BoxShadow(
            offset: const Offset(0, 1),
            blurRadius: 6,
            color: Colors.grey,
          )
          :
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 30,
            color: AppConstants.kShadowColor,
          ),

        ],
      ),
      child: Column(
        children: [
          Image.asset(image),
          Text(
            symptomText,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}