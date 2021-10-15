import 'package:flutter/material.dart';
import 'package:travel_web_dashboard/model.dart/destination_model.dart';

class DistinationCard extends StatelessWidget {
  const DistinationCard({
    Key? key,
    required this.distInfo,
  }) : super(key: key);
  final DistInfo distInfo;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
              height: 80,
              width: 80,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(distInfo.image),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Text(
                  distInfo.name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.grey,
                      size: 16,
                    ),
                    Text(
                      distInfo.location,
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey,
                      size: 16,
                    ),
                    Text(
                      "${distInfo.star}",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Text(
              "\$${distInfo.price}",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DistinationCardMob extends StatelessWidget {
  const DistinationCardMob({
    Key? key,
    required this.distInfo,
  }) : super(key: key);
  final DistInfo distInfo;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(distInfo.image, fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              distInfo.name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.grey,
                  size: 16,
                ),
                Text(
                  distInfo.location,
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Icon(
                  Icons.star,
                  color: Colors.grey,
                  size: 16,
                ),
                Text(
                  "${distInfo.star}",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "\$${distInfo.price}",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
