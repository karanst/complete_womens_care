import 'package:flutter/material.dart';

import '../main.dart';

class CustomButtonWithIcon extends StatelessWidget {
  final String buttonText;
  final Widget buttonIcon;
  final VoidCallback onTap;
  const CustomButtonWithIcon({Key key,  this.buttonText, this.buttonIcon, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 260,
          height: 60,
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: LIME,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(buttonText,),
              Container(
                width: 30,
                height: 30,
                child: buttonIcon,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100)
                ),
              ),
            ],
          ),
        ),
      ),
    );;
  }
}
