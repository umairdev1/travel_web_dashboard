import 'package:flutter/material.dart';
import 'package:travel_web_dashboard/model.dart/responsive.dart';
import 'package:travel_web_dashboard/screens/Home/Menu/menu.dart';

import 'Sidebar/sidebar.dart';
import 'dashboard/dashboard.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // now we make it more professional
      // remove all litsview widgets
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Center(
              child: Text(
                "Travel",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            )),
            MenuCardList(
              icon: Icons.dashboard,
              press: () {},
              inactiveColor: true,
              title: 'Dashboard',
            ),
            MenuCardList(
              icon: Icons.card_giftcard,
              press: () {},
              title: 'My Tickets',
            ),
            MenuCardList(
              icon: Icons.favorite_outline,
              press: () {},
              title: 'Favourite',
            ),
            MenuCardList(
              icon: Icons.email_outlined,
              press: () {},
              title: 'Messages',
            ),
            MenuCardList(
              icon: Icons.account_balance_wallet_outlined,
              press: () {},
              title: 'transaction',
            ),
            MenuCardList(
              icon: Icons.settings,
              press: () {},
              title: 'Setting',
            ),
          ],
        ),
      ),
      body: Row(
        children: [
          //menu
          if (Responsive.isDesktop(context)) Expanded(flex: 1, child: Menu()),
          //main section
          Expanded(
              flex: 6,
              child: ListView(
                children: [
                  Row(
                    children: [
                      Expanded(flex: 4, child: Dashboard()),
                      if (!Responsive.isMobile(context))
                        Expanded(flex: 2, child: SideBar()),
                    ],
                  ),
                ],
              )),

          //sidebar
        ],
      ),
    );
  }
}
