import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  const RoundedButton({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      height: 50,
      margin: EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: FlatButton(
          color: Constants.buttonColor,
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
