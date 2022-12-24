import 'package:flutter/material.dart';
import 'package:task/core/const.dart';

class ContainorFirstThree extends StatelessWidget {
  const ContainorFirstThree({
    super.key,
    required this.img,
    required this.number,
    required this.first,
    this.second,
    this.clr,
  });
  final String img;
  final int number;
  final String first;
  final String? second;
  final Color? clr;

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
            Text(
              number.toString(),
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Objectivity"),
            ),
            width10,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  first,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                Text(
                  second ?? '',
                  style: TextStyle(
                    color: clr ?? Colors.white,
                    fontSize: 12,
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
