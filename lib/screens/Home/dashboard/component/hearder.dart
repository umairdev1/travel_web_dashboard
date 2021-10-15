import 'package:flutter/material.dart';
import 'package:travel_web_dashboard/model.dart/responsive.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.menu)),
          ),
        Column(
          children: [
            Text(
              "Hello, Jeremy!",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Explore the world",
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
        Spacer(),
        Expanded(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search...",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          height: 50,
          width: 50,
          decoration:
              BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: Icon(
            Icons.notifications,
          ),
        )
      ],
    );
  }
}
//one header for mobile and other for desktop

class MobHeader extends StatelessWidget {
  const MobHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Builder(
          builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu)),
        ),
        Column(
          children: [
            Text(
              "Hello, Jeremy!",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Explore the world",
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
        Spacer(),
        Container(
          height: 35,
          width: 35,
          decoration:
              BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: Icon(
            Icons.search,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          height: 35,
          width: 35,
          decoration:
              BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: Icon(
            Icons.notifications,
          ),
        )
      ],
    );
  }
}
