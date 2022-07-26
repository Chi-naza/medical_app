import 'package:flutter/material.dart';
import 'package:medical_app/constants.dart';
import 'package:medical_app/widgets/statistics.dart';
import 'package:medical_app/widgets/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height; // getting screen height
    var width = MediaQuery.of(context).size.width; // getting screen width
    print("Screen Height = $height  AND  Screen Width = $width");

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header for Clip path and header contents  'All you need \n is to talk to \nsomeone'
            const Header(
              textTop: 'All you need', 
              textBottom: 'is to talk to', 
              textMiddle: 'someone',
              image: 'assets/icons/Drcorona.svg',               
            ),
            // Container for the dropdownButton
            Container(
              height: height*0.06,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Row(
                children: [
                  Icon(Icons.location_on, color: Colors.purple),
                  SizedBox(width: width*0.03),
                  Expanded(
                    child: DropdownButton(
                      isExpanded: true,
                      underline: SizedBox(),
                      // icon: SvgPicture.asset('assets/icons/dropdown.svg'),
                      value: 'Biafra',
                      items: ['Biafra', 'Japan', 'Germany', 'Zimbabwe', 'Ghana', 'USA'].map((String item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      onChanged: (item) {}),
                  ),             
                ],
              ),
            ),
            SizedBox(height: height*0.05),
            // RichText
            Padding(
              padding: EdgeInsets.symmetric(horizontal: height*0.01),
              child: Column(
                children: [
                  Row(
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Case Update \n',
                              style: AppConstants.kTitleTextstyle,
                            ),
                            TextSpan(
                              text: 'New viruses found out',
                              style: TextStyle(color: AppConstants.kTextLightColor),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),  // spacer creates a space between widgets
                      // See Details text
                      const Text(
                        'See Details',
                        style: TextStyle(
                          color: AppConstants.kPrimaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: height*0.02),
            // Container containing the counters: Infected, Deaths & Recovered
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 4),
                    blurRadius: 30,
                    color: AppConstants.kShadowColor,
                  ),
                ],
              ),
              // Row for Infected, Deaths and Recovered
              child: Row(
                mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                children: const [
                  Statistics(
                    title: 'Infected',
                    number: 1012,
                    color: AppConstants.kInfectedColor,
                  ),
                  Statistics(
                    title: 'Deaths',
                    number: 38,
                    color: AppConstants.kDeathColor,
                  ),
                  Statistics(
                    title: 'Recovered',
                    number: 208,
                    color: AppConstants.kRecovercolor,
                  ),
                ],
              ),
            ),
            SizedBox(height: height*0.07),
            // Spread Of Virus Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: height*0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Spread of Virus',
                    style: AppConstants.kTitleTextstyle,
                  ),
                  Text(
                    'See Details',
                    style: TextStyle(
                      color: AppConstants.kPrimaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: height*0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 30,
                    color: AppConstants.kShadowColor,
                  ),
                ],
              ),
              child: Image.asset('assets/images/map.png', fit: BoxFit.cover),       
            ),
          ],
        ),
      ),
    );
  }
}
