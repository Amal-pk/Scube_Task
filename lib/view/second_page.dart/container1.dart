import 'package:flutter/material.dart';
import 'package:task/core/const.dart';

class Containor1 extends StatelessWidget {
  Containor1({super.key});
  List<String> order = [
    "Normal Delivery",
    "Cash on Delivery",
  ];
  List<String> date = [
    "04/09/2022",
    "13/01/2023",
  ];
  List<String> time = [
    "09:00am",
    "08:00pm",
  ];
  List<String> fuel = [
    "100",
    "150",
  ];
  @override
  Widget build(BuildContext context) {
    String dropdownValue = order.first;
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
          const Text(
            "Order Details",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            child: TextFormField(
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.amber,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.amber,
                  ),
                ),
                hintText: 'Enter your Order ID',
                labelText: 'Order ID ',
              ),
              onSaved: (String? value) {},
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: DropdownButton(
                hint: const Text("Select Order Type"),
                value: dropdownValue,
                icon: const Icon(
                  Icons.arrow_downward,
                  color: Colors.transparent,
                ),
                alignment: AlignmentDirectional.centerStart,
                elevation: 16,
                isExpanded: true,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                underline: Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.yellow,
                ),
                items: order.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: ((value) {
                  dropdownValue = value!;
                })),
          ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: DropdownButton(
                hint: const Text("Select Delivery Date "),
                // value: dropdownValue,
                icon: const Icon(
                  Icons.arrow_downward,
                  color: Colors.transparent,
                ),
                alignment: AlignmentDirectional.centerStart,
                elevation: 16,
                isExpanded: true,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                underline: Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.yellow,
                ),
                items: date.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: ((value) {})),
          ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: DropdownButton(
                hint: const Text("Select Delivery Time"),
                // value: dropdownValue,
                icon: const Icon(
                  Icons.arrow_downward,
                  color: Colors.transparent,
                ),
                alignment: AlignmentDirectional.centerStart,
                elevation: 16,
                isExpanded: true,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                underline: Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.yellow,
                ),
                items: time.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: ((value) {})),
          ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: DropdownButton(
                hint: const Text("Enter Fuel Qty ( in Lts)"),
                // value: dropdownValue,
                icon: const Icon(
                  Icons.arrow_downward,
                  color: Colors.transparent,
                ),
                alignment: AlignmentDirectional.centerStart,
                elevation: 16,
                isExpanded: true,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                underline: Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.yellow,
                ),
                items: fuel.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: ((value) {})),
          ),
          Text("Present Fuel Price ( 95 /- Rs)"),
          high,
        ],
      ),
    );
  }
}
