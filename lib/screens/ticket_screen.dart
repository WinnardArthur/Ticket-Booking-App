import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';
import 'package:ticket_booking_app/utils/app_info_list.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/widgets/layout_builder.dart';
import '../widgets/ticket_tabs.dart';
import '../widgets/column_layout.dart';

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
                SizedBox(
                  height: 1,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const AppColumnLayout(
                            firstText: 'Flutter PT',
                            secondText: 'Passengers',
                            alignment: CrossAxisAlignment.start,
                            isColor: false,
                          ),
                          const AppColumnLayout(
                            firstText: '8432 238459',
                            secondText: 'Passengers',
                            alignment: CrossAxisAlignment.end,
                            isColor: false,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      const AppLayoutBuilderWidget(
                        sections: 15,
                        isColor: false,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const AppColumnLayout(
                            firstText: '0324 876245 PT',
                            secondText: 'Number of E-ticket',
                            alignment: CrossAxisAlignment.start,
                            isColor: false,
                          ),
                          const AppColumnLayout(
                            firstText: 'ES97F0',
                            secondText: 'Booking Code',
                            alignment: CrossAxisAlignment.end,
                            isColor: false,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      const AppLayoutBuilderWidget(
                        sections: 15,
                        isColor: false,
                      ),
                      Gap(AppLayout.getHeight(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset("assets/images/hotel1.jpeg",
                                      scale: 11),
                                  Text(" *** 2884",
                                      style: Styles.headlineStyle3)
                                ],
                              ),
                              Text("Payment method",
                                  style: Styles.headlineStyle4)
                            ],
                          ),
                          const AppColumnLayout(
                            firstText: '\$570.99',
                            secondText: 'Price',
                            alignment: CrossAxisAlignment.end,
                            isColor: false,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
