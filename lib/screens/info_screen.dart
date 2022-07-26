import 'package:flutter/material.dart';
import 'package:medical_app/constants.dart';
import 'package:medical_app/widgets/header.dart';
import 'package:medical_app/widgets/prevent_card.dart';
import 'package:medical_app/widgets/symptom_card.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width; // getting screen width
    var height = MediaQuery.of(context).size.height; // getting screen height

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(
              textTop: 'Get to know',
              textMiddle: 'Ebola virus',
              image:'assets/icons/coronadr.svg',
            ),
            Column(
              children: [
                Text(
                  'Symptoms',
                  style: AppConstants.kTitleTextstyle,
                ),
                SizedBox(height: height*0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                     SymptomCard(
                      symptomText: 'Headache',
                      image: 'assets/images/headache.png',
                     ),
                     SymptomCard(
                      symptomText: 'Fever',
                      image: 'assets/images/fever.png',
                      isActive: true,
                     ),
                     SymptomCard(
                      symptomText: 'Cough',
                      image: 'assets/images/cough.png',
                     ),
                  ],
                ),
                SizedBox(height: height*0.07),
                Text(
                  'Prevention',
                  style: AppConstants.kTitleTextstyle,
                ),
                SizedBox(height: height*0.03),
                // Prevent Card HERE:
                const PreventCard(
                  image: 'assets/images/wear_mask.png', 
                  preventionTitle: 'Lorem ipsum dolor sit amet', 
                  descriptionText: ' Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ad soluta magnam fugiat aperiam quis sit impedit placeat eum recusandae officia.',
                ),
                const PreventCard(
                  image: 'assets/images/wash_hands.png', 
                  preventionTitle: 'Lorem ipsum dolor sit amet', 
                  descriptionText: ' Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ad soluta magnam fugiat aperiam quis sit impedit placeat eum recusandae officia.',
                ),                
              ],
            )
          ],
        ),
      ),
    );
  }
}