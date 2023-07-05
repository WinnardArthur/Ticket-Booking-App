import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';
import 'package:ticket_booking_app/utils/app_info_list.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:gap/gap.dart';
import '../widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(20),
                  vertical: AppLayout.getHeight(20)),
              children: [
                Gap(AppLayout.getHeight(40)),
                Text("Tickets", style: Styles.headlineStyle1),
                Gap(AppLayout.getHeight(20)),
                const AppTicketTab(firstTab: "Upcoming", secondTab: "Previous"),
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                  child: TicketView(ticket: ticketList[0], isColor: true),
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Text("Futter PT", style: Styles.headlineStyle3),
                                Gap(AppLayout.getHeight(5)),
                                Text("Passenger", style: Styles.headlineStyle3),
                              ],
                            )
                          ],
                        )
                      ],
                    )),
              ],
            )
          ],
        ));
  }
}
