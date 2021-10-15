import 'package:flutter/material.dart';
import 'package:travel_web_dashboard/constant.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}

class MenuCardList extends StatelessWidget {
  const MenuCardList({
    Key? key,
    required this.title,
    required this.icon,
    required this.press,
    this.inactiveColor = false,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final VoidCallback press;
  final bool inactiveColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: inactiveColor ? kPrimaryColor : Colors.transparent,
      // ignore: prefer_const_constructors
      child: ListTile(
        onTap: press,
        leading: Icon(icon, color: inactiveColor ? Colors.white : Colors.grey),
        horizontalTitleGap: 0.0,
        title: Text(
          title,
          style: TextStyle(color: inactiveColor ? Colors.white : Colors.grey),
        ),
      ),
    );
  }
}
