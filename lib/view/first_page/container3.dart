import 'package:flutter/material.dart';
import 'package:task/core/const.dart';

class ContainerThrid extends StatelessWidget {
  const ContainerThrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                  height: 80,
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 216, 236, 243),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 2,
                          color: Colors.blue,
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "AA121212121",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "9th July, 2021",
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "07:00 PM",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          high,
                          Text(
                            "09:00 PM",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 160, 212, 230),
                          ),
                        ),
                        onPressed: (() {}),
                        child: const Text(
                          "Approved",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 10,
                          ),
                        ),
                      ),
                      const Icon(Icons.keyboard_arrow_up_sharp)
                    ],
                  ),
                );
  }
}