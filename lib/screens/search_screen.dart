import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/widgets/icon_text_widget.dart';
import 'package:ticket_booking_app/widgets/header_row.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What are \nyou looking for?",
              style: Styles.headlineStyle1.copyWith(fontSize: 35)),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
            child: Container(
                padding: const EdgeInsets.all(.5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(50),
                    ),
                    color: const Color(0xFFF4F6FD)),
                child: Row(children: [
                  // Left container
                  Container(
                    width: size.width * .44,
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(AppLayout.getHeight(50))),
                      color: Colors.white,
                    ),
                    child: const Center(child: Text("Airline tickets")),
                  ),
                  Container(
                    width: size.width * .44,
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(AppLayout.getHeight(50))),
                      color: Colors.transparent,
                    ),
                    child: const Center(child: Text("Hotels")),
                  ),
                ])),
          ),
          Gap(AppLayout.getHeight(20)),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(AppLayout.getHeight(20)),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(18),
              horizontal: AppLayout.getWidth(10),
            ),
            decoration: BoxDecoration(
              color: const Color(0xD91130CE),
              borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
            ),
            child: Center(
              child: Text(
                "Find Tickets",
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          const HeaderRow(largeText: "Upcoming Flights", smallText: "View all"),
          Gap(AppLayout.getHeight(15)),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              height: AppLayout.getHeight(415),
              width: size.width * 0.42,
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(15),
                  vertical: AppLayout.getHeight(15)),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1),
                  ]),
              child: Column(
                children: [
                  Container(
                    height: AppLayout.getHeight(180),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(12)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/hotel4.jpeg"),
                        )),
                  ),
                  Gap(AppLayout.getHeight(12)),
                  Text(
                      "33% discount on the early booking of this flight. Don't miss out!",
                      style: Styles.headlineStyle2.copyWith())
                ],
              ),
            ),
            Column(children: [
              Stack(
                children: [
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(200),
                    decoration: BoxDecoration(
                      color: const Color(0xFF3AB8B8),
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(18)),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(15),
                      horizontal: AppLayout.getWidth(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Discount\nfor survey",
                          style: Styles.headlineStyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Gap(AppLayout.getHeight(10)),
                        Text(
                          "Take the survey about our services and get a discount",
                          style: Styles.headlineStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 17),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    right: -45,
                    top: -40,
                    child: Container(
                      padding: EdgeInsets.all(AppLayout.getHeight(30)),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 18, color: const Color(0xFF189999)),
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(15)),
              Container(
                width: size.width * 0.44,
                height: AppLayout.getHeight(200),
                padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(15),
                    horizontal: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                  color: const Color(0xFFEC6545),
                ),
                child: Column(children: [
                  Text(
                    "Take Love",
                    style: Styles.headlineStyle2.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Gap(AppLayout.getHeight(5)),
                  RichText(
                      text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'A',
                        style: TextStyle(fontSize: 38),
                      ),
                      TextSpan(
                        text: 'B',
                        style: TextStyle(fontSize: 50),
                      ),
                      TextSpan(
                        text: 'C',
                        style: TextStyle(fontSize: 38),
                      ),
                    ],
                  )),
                ]),
              )
            ])
          ]),
        ],
      ),
    );
  }
}
