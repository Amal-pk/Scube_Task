import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:task/view/second_page.dart/container1.dart';
import 'package:task/view/second_page.dart/container2.dart';
import 'package:task/view/second_page.dart/container3.dart';
import 'package:timeline_tile/timeline_tile.dart';

class NewOrder extends StatelessWidget {
  NewOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 225, 240, 248),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.transparent,
            leading: const Icon(
              Icons.menu,
              color: Colors.amber,
            ),
            expandedHeight: 100,
            actions: const [
              Icon(Icons.notifications_none_sharp),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ),
              )
            ],
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 18, 49, 64),
                    Color.fromARGB(255, 17, 11, 67),
                    Color.fromARGB(255, 19, 2, 80),
                  ],
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ListView(
              shrinkWrap: true,
              primary: false,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: MaterialButton(
                        height: 30.0,
                        minWidth: 30.0,
                        color: const Color.fromARGB(255, 148, 208, 230),
                        textColor: Colors.black,
                        onPressed: () => {},
                        splashColor: Colors.blueAccent,
                        child: const Text(
                          "Your Order",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Create New Order",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    "Enter the details.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  constraints: const BoxConstraints(
                    maxHeight: 100,
                    maxWidth: 300,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      TimelineTile(
                        axis: TimelineAxis.horizontal,
                        alignment: TimelineAlign.center,
                        isFirst: true,
                        indicatorStyle: IndicatorStyle(
                          height: 50,
                          drawGap: true,
                          color: Colors.yellow,
                          // padding: const EdgeInsets.all(8),
                          iconStyle: IconStyle(
                            color: Colors.black,
                            iconData: Icons.water_drop,
                          ),
                        ),
                      ),
                      TimelineTile(
                        axis: TimelineAxis.horizontal,
                        alignment: TimelineAlign.center,
                        isLast: true,
                        indicatorStyle: IndicatorStyle(
                          height: 50,
                          drawGap: true,
                          color: const Color.fromARGB(255, 208, 205, 205),
                          // padding: const EdgeInsets.all(8),
                          indicatorXY: 1,
                          iconStyle: IconStyle(
                            color: Colors.white,
                            iconData: Icons.calendar_month,
                          ),
                        ),
                      ),
                      TimelineTile(
                        axis: TimelineAxis.horizontal,
                        alignment: TimelineAlign.center,
                        isLast: true,
                        indicatorStyle: IndicatorStyle(
                          height: 50,
                          drawGap: true,
                          color: const Color.fromARGB(255, 208, 205, 205),
                          // padding: const EdgeInsets.all(8),
                          indicatorXY: 1,
                          iconStyle: IconStyle(
                            color: Colors.white,
                            iconData: Icons.expand_circle_down,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Containor1(),
                const Container2(),
                const Container3(),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: InkWell(
                          onTap: (() {
                            Navigator.of(context).pop();
                          }),
                          child: const Text(
                            "Go back",
                            style: TextStyle(
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.amber),
                            ),
                            onPressed: (() {}),
                            child: const Text(
                              "Confirm",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            )),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
