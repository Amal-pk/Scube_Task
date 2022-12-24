import 'package:flutter/material.dart';
import 'package:task/controller/model.dart';
import 'package:task/controller/model1.dart';

class Controllers extends ChangeNotifier {
  final TextEditingController workingAreaName = TextEditingController();
  final TextEditingController workingAreaAddress = TextEditingController();

  final TextEditingController pocWorkingAreaName = TextEditingController();
  final TextEditingController pocworkingAreaAddress = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController number = TextEditingController();
  List<PocDetailsModel> details = [];
  List<DetailsModel> details1 = [];
}
