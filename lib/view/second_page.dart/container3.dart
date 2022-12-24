import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/controller/controller.dart';
import 'package:task/controller/model.dart';
import 'package:task/view/second_page.dart/poc_details/details.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container3State();
}

List<String> radioValues = [];

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controllers>(context);
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            blurRadius: 2,
            color: Colors.grey,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "POC Details",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(
              thickness: 2,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => PocDetails()),
                ),
              );
              controller.number.clear();
              controller.email.clear();
              controller.pocWorkingAreaName.clear();
              controller.pocworkingAreaAddress.clear();
            },
            child: DottedBorder(
              color: Colors.amber,
              borderType: BorderType.RRect,
              strokeWidth: 2,
              radius: const Radius.circular(12),
              padding: const EdgeInsets.all(16),
              child: const ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                child: Center(
                  child: Text(
                    "+ Add new POC",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: controller.details.length,
            itemBuilder: ((context, index) {
              radioValues.add(controller.details1[index].name);

              return Column(
                children: [
                  Card(
                    elevation: 1,
                    shadowColor: Colors.grey,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Radio(
                              activeColor: Colors.amber,
                              value: controller.details1[index].name,
                              groupValue: radioValues[index],
                              onChanged: (value) {
                                setState(() {
                                  radioValues[index] = value!;
                                });
                              },
                            ),
                            Text(
                              controller.details[index].name,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            IconButton(
                              onPressed: (() {}),
                              icon: const Icon(Icons.more_vert),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(controller.details[index].address),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "Mobile:${controller.details[index].number}"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                              Text("Email:${controller.details[index].email}"),
                        )
                      ],
                    ),
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
