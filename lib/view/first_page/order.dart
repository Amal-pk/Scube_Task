import 'package:flutter/material.dart';
import 'package:task/view/first_page/container3.dart';
import 'package:task/view/first_page/containor.dart';
import 'package:task/view/first_page/containor2.dart';
import 'package:task/view/second_page.dart/new_order.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 245, 250),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.transparent,
            leading: const Icon(
              Icons.menu,
              color: Colors.amber,
            ),
            expandedHeight: 120,
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
              child: const Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Fuel cost Rs.102.00 Per liter on July 09, 2021',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ListView(
              shrinkWrap: true,
              primary: false,
              children: [
                const ContainorFirstThree(
                  img: "asset/Group 1437530.png",
                  number: 30,
                  first: 'Total Orders placed ',
                  second: 'Rs.5,000 Spent on this order',
                  clr: Colors.amber,
                ),
                const ContainorFirstThree(
                  img: "asset/Group 14376.png",
                  number: 10,
                  first: 'Active orders',
                  second: 'Rs.5,000 Spent on this order',
                  clr: Colors.blue,
                ),
                const ContainorFirstThree(
                  img: "asset/Group 3.png",
                  number: 10,
                  first: 'Cancelled Orders',
                ),
                const ContainorSconedTwo(
                  img: "asset/Group 14377.png",
                  number: 12000,
                  first: "Amount spent so far",
                ),
                const ContainorSconedTwo(
                  img: "asset/Group 2.png",
                  number: 5000,
                  first: "Amount Saved so far",
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Orders",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => NewOrder()),
                            ),
                          );
                        },
                        child: Container(
                          // height: 50,
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 238, 227, 74),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 2,
                                color: Color.fromARGB(255, 98, 84, 42),
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Text("+ Create New Order"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                const ContainerThrid(),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
