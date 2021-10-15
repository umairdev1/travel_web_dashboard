import 'package:flutter/material.dart';

import '../../../../constant.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: kBgColor, borderRadius: BorderRadius.circular(50)),
          child: Image.asset(
            "assets/images/profile.png",
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Jeremy Zuck",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(
              "Traveler Enthusiast",
              style: TextStyle(color: Colors.black54, fontSize: 16),
            ),
          ],
        ),
        SizedBox(
          width: 15.0,
        ),
        Icon(Icons.keyboard_arrow_down)
      ],
    );
  }
}
