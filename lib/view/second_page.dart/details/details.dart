import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/controller/controller.dart';
import 'package:task/controller/model1.dart';
import 'package:task/view/second_page.dart/new_order.dart';

class ChooseDeliveryLocation extends StatelessWidget {
  ChooseDeliveryLocation({super.key});
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controllers>(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 240, 248),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: 300,
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
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: controller.workingAreaName,
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        hintText: 'Enter Your Working Place',
                        labelText: 'Name',
                      ),
                      onSaved: (String? value) {},
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some Name';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: controller.workingAreaAddress,
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        hintText: 'Enter Your Working Place Address',
                        labelText: 'Address',
                      ),
                      onSaved: (String? value) {},
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some Address';
                        }
                        return null;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ElevatedButton(
                        onPressed: (() {
                          if (_formkey.currentState!.validate()) {
                            controller.details1.add(DetailsModel(
                              address: controller.workingAreaAddress.text,
                              name: controller.workingAreaName.text,
                            ));
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                            );
                            Navigator.pushAndRemoveUntil<void>(
                              context,
                              MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      NewOrder()),
                              ModalRoute.withName('/'),
                            );
                          }
                        }),
                        child: const Text("add"),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
