import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
import '../utils/app_layout.dart';
import 'package:gap/gap.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20),
            ),
            children: [
              Gap(AppLayout.getHeight(40)),
              Row(
                children: [
                  Container(
                    height: AppLayout.getHeight(86),
                    width: AppLayout.getHeight(86),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(10),
                      ),
                      image: const DecorationImage(
                        image: AssetImage("/assets/images/logo.png"),
                      ),
                    ),
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Book Tickets",
                          style: Styles.headlineStyle1,
                        ),
                        Gap(AppLayout.getHeight(2)),
                        Text(
                          "New York",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade500),
                        ),
                        Gap(AppLayout.getHeight(8)),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(100)),
                            color: const Color(0xFFFEF4F3),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: AppLayout.getHeight(3),
                              vertical: AppLayout.getHeight(5)),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(3),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF526799),
                                  ),
                                  child: const Icon(
                                    FluentSystemIcons.ic_fluent_shield_filled,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ),
                                Gap(AppLayout.getHeight(5)),
                                const Text(
                                  'Premium status',
                                  style: TextStyle(
                                      color: Color(0xFF526799),
                                      fontWeight: FontWeight.w600),
                                ),
                                Gap(AppLayout.getHeight(5)),
                              ]),
                        )
                      ]),
                  const Spacer(),
                  Column(children: [
                    InkWell(
                        onTap: () {},
                        child: Text("Edit",
                            style: Styles.textStyle.copyWith(
                                color: Styles.primaryColor,
                                fontWeight: FontWeight.w300)))
                  ]),
                ],
              ),
              Gap(AppLayout.getHeight(8)),
              Divider(color: Colors.grey.shade300),
              Gap(AppLayout.getHeight(8)),
              Stack(
                children: [
                  Container(
                    height: AppLayout.getHeight(90),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Styles.primaryColor,
                        borderRadius: BorderRadius.circular(18)),
                  ),
                  Positioned(
                    right: -45,
                    top: -40,
                    child: Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(30)),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 18, color: const Color(0xFF264CD2)))),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(25),
                        vertical: AppLayout.getHeight(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                            maxRadius: 25,
                            backgroundColor: Colors.white,
                            child: Icon(
                              FluentSystemIcons
                                  .ic_fluent_lightbulb_filament_filled,
                              color: Styles.primaryColor,
                              size: 27,
                            )),
                        Gap(AppLayout.getHeight(12)),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("You've got a new award",
                                  style: Styles.headlineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )),
                              Text("You have 102 flights in a year",
                                  style: Styles.headlineStyle2.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white.withOpacity(0.9),
                                      fontSize: 16))
                            ])
                      ],
                    ),
                  )
                ],
              )
            ]));
  }
}
