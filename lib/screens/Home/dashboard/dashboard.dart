import 'package:flutter/material.dart';
import 'package:travel_web_dashboard/constant.dart';
import 'package:travel_web_dashboard/model.dart/destination_model.dart';
import 'package:travel_web_dashboard/model.dart/place_model.dart';
import 'package:travel_web_dashboard/model.dart/responsive.dart';
import 'package:travel_web_dashboard/screens/Home/Sidebar/sidebar.dart';

import 'component/distinationCard.dart';
import 'component/hearder.dart';
import 'component/placecard.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: kBgColor, borderRadius: BorderRadius.circular(50.0)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                children: [
                  Responsive(
                      mobile: _size.width <= 420 ? MobHeader() : Header(),
                      desktop: Header()),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 360,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: places.length,
                      itemBuilder: (context, index) => PlaceCard(
                        place: places[index],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 5.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Best Destination",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Responsive(
                          mobile: _size.width <= 420
                              ? Column(
                                  children: List.generate(
                                      distination.length,
                                      (index) => DistinationCardMob(
                                            distInfo: distination[index],
                                          )),
                                )
                              : Column(
                                  children: List.generate(
                                      distination.length,
                                      (index) => DistinationCard(
                                            distInfo: distination[index],
                                          )),
                                ),
                          desktop: Column(
                            children: List.generate(
                                distination.length,
                                (index) => DistinationCard(
                                      distInfo: distination[index],
                                    )),
                          ),
                        ),
                        Divider(
                          thickness: 3,
                          color: kBgColor,
                        ),
                        if (Responsive.isMobile(context)) SideBar(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// now we make our web responsive