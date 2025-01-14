import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/res/widgets/big_circle.dart';
import 'package:ticket_app/base/res/widgets/big_dot.dart';

import '../styles/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width * 0.85,
        height: 189,
        child: Container(
          margin: const EdgeInsets.only(right: 16),
          child: Column(
            children: [
              // blue part of the ticket
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: AppStyles.ticketBlue,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21))),
                child: Column(
                  children: [
                    //show departure and destination with icons first line
                    Row(
                      children: [
                        Text(
                          "NYC",
                          style: AppStyles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        const BigDot(),
                        Expanded(
                            child: Stack(
                          children: [
                            const SizedBox(
                              height: 24,
                              child: AppLayoutbuilderWidget(
                                randomDivider: 6,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                  angle: 1.57,
                                  child: const Icon(
                                    Icons.local_airport_rounded,
                                    color: Colors.white,
                                  )),
                            )
                          ],
                        )),
                        const BigDot(),
                        Expanded(child: Container()),
                        Text(
                          "LDN",
                          style: AppStyles.headLineStyle3
                              .copyWith(color: Colors.white),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    //show departure and destination name with time
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: Text(
                            "New-York",
                            style: AppStyles.headLineStyle4
                                .copyWith(color: Colors.white),
                          ),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "8H 30M",
                          style: AppStyles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        SizedBox(
                          width: 100,
                          child: Text(
                            "London",
                            textAlign: TextAlign.end,
                            style: AppStyles.headLineStyle4
                                .copyWith(color: Colors.white),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              // circles and dots
              Container(
                color: AppStyles.ticketOrange,
                child: const Row(
                  children: [
                    BigCircle(
                      isRight: false,
                    ),
                    Expanded(
                        child: AppLayoutbuilderWidget(
                      randomDivider: 16,
                      width: 6,
                    )),
                    BigCircle(
                      isRight: true,
                    )
                  ],
                ),
              ),
              // orange part of the ticket
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: AppStyles.ticketOrange,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21))),
                child: Column(
                  children: [
                    //show departure and destination with icons first line
                    Row(
                      children: [
                        Text(
                          "1 MAY",
                          style: AppStyles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "08:00 AM",
                          style: AppStyles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "23",
                          style: AppStyles.headLineStyle3
                              .copyWith(color: Colors.white),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    //show departure and destination name with time
                    Row(
                      children: [
                        Text(
                          "Date",
                          style: AppStyles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "Departure time",
                          style: AppStyles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "November",
                          style: AppStyles.headLineStyle4
                              .copyWith(color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
