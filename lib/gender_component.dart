import 'package:flutter/material.dart';
import 'constants.dart';

class GenderComponent extends StatelessWidget {
  final IconData genderIcon;
  final String genderName;
  GenderComponent({@required this.genderIcon, @required this.genderName});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          color: Colors.white,
          size: 80.0,
        ),
        SizedBox(
          height: 12.0,
        ),
        Text(
          genderName,
          style: kTextLabel,
        ),
      ],
    );
  }
}
