import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app/constants.dart';
import 'package:medical_app/screens/info_screen.dart';

class Header extends StatelessWidget {
  final String textTop;
  final String textMiddle;
  final String? textBottom;
  final String image;
  
  const Header({Key? key, required this.textTop, this.textBottom='', required this.image, required this.textMiddle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height; // getting screen height
    var width = MediaQuery.of(context).size.width; // getting screen width
    
    // ClipPath for the curves and the magic
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: EdgeInsets.only(left: 40, top: 50, right: 20),
        height: height * 0.5,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Colors.red,
              Colors.purple
            ],
          ),
          image: DecorationImage(
            image: AssetImage('assets/images/virus.png'), // img like stars in the background
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Align widget helps to align items in a container
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return InfoScreen();
                  }));
                }),
                child: SvgPicture.asset('assets/icons/menu.svg')
              ) // for menu icon
            ),
            SizedBox(height: height * 0.02),
            Expanded(
              child: Stack(
                children: [
                  // for the woman doctor
                  SvgPicture.asset(
                    image,
                    width: width * 0.55,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topRight,
                  ),
                  // the header text
                  Positioned(
                    top: 20,
                    left: 120,
                    child: Text(
                      '$textTop \n $textMiddle \n$textBottom',
                      style: AppConstants.kHeadingTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: height * 0.035,
                      ),
                    ),
                  ),
                  Container(), // lingering container which makes the text visible
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// Class clipper that will clip our path
class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}