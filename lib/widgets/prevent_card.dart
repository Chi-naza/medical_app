import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/constants.dart';

class PreventCard extends StatelessWidget {
  final String image;
  final String preventionTitle;
  final String descriptionText;
  const PreventCard({Key? key, required this.image, required this.preventionTitle, required this.descriptionText}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(bottom: height*0.02),
      child: SizedBox(
        height: height*0.3,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            Container(
              height: height*0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 8),
                    blurRadius: 24,
                    color: AppConstants.kShadowColor,
                  ),
                ],
              ),
            ),
            Image.asset(image),  // here is the image
            Positioned(
              left: height*0.25,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                height: 136,
                width: width - 170, // width from mediaqueries, declared above
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      preventionTitle, // prevention title
                      style: AppConstants.kTitleTextstyle.copyWith(
                        fontSize: height*0.025,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        descriptionText, // here is the description text
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset("assets/icons/forward.svg"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}