import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/controller/controller.dart';
import 'package:task/controller/model.dart';
import 'package:task/view/second_page.dart/new_order.dart';

class PocDetails extends StatelessWidget {
  PocDetails({
    super.key,
  });
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
              height: 500,
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
                      controller: controller.pocWorkingAreaName,
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
                      controller: controller.pocworkingAreaAddress,
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
                          return 'Please enter address';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: controller.number,
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
                        hintText: 'Enter Your Number',
                        labelText: 'Number',
                      ),
                      onSaved: (String? value) {},
                      validator: (value) {
                        if (value!.length != 10) {
                          return 'Mobile Number must be of 10 digit';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: controller.email,
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
                        hintText: 'Enter Your Email',
                        labelText: 'Email',
                      ),
                      onSaved: (String? value) {},
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !value.contains('@') ||
                            !value.contains('.')) {
                          return 'Invalid Email';
                        }
                        return null;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ElevatedButton(
                        onPressed: (() {
                          if (_formkey.currentState!.validate()) {
                            controller.details.add(PocDetailsModel(
                              address: controller.pocworkingAreaAddress.text,
                              name: controller.pocWorkingAreaName.text,
                              number: controller.number.text,
                              email: controller.email.text,
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
