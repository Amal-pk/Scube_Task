import 'package:flutter/material.dart';
import 'package:task/core/const.dart';

class ContainorSconedTwo extends StatelessWidget {
  const ContainorSconedTwo({
    super.key,
    required this.img,
    required this.number,
    required this.first,
  });

  final String img;
  final int number;
  final String first;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: const EdgeInsets.only(left: 16, right: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 1,
              color: Color.fromARGB(255, 20, 60, 93),
            )
          ],
        ),
        child: Row(
          children: [
            Image(
              image: AssetImage(img),
            ),
            width10,
            width10,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Rs.${number}",
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Objectivity"),
                ),
                Text(
                  first,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
