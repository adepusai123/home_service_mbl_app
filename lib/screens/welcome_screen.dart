import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_service_ui/components/rounded_button.dart';

import '../constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Constants.backgroundColor,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset('assets/icons/top_right.png'),
            width: size.width * 0.8,
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset('assets/icons/top_left_icon.png'),
            width: size.width * 0.3,
          ),
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 80),
                child: SizedBox(
                  height: 45,
                  child: Text(
                    "Home Service",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.96,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                child: SvgPicture.asset(
                  'assets/svg/undraw_balloons_vxx5.svg',
                  height: size.width * 0.5,
                  width: size.width * 0.5,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Constants.boxBackgroundColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SizedBox(
                  width: size.width * 0.7,
                  child: Text(
                    "Now its in your hand to book an agent for your home service like\nPlumbing, Carepentry, Electricial and AC Repair etc..",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff925978),
                      fontSize: 16,
                      fontFamily: "Playball",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              RoundedButton(text: 'GET START')
            ],
          )),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset('assets/icons/splash_left_top_icon.png'),
            width: size.width * 0.3,
          ),
        ],
      ),
    );
  }
}
