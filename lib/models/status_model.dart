import 'package:flutter/material.dart';

class StatusModel {
  final String name;
  final String time;
  final String avatar;

  StatusModel({required this.name, required this.time, required this.avatar});
}

List<StatusModel> statusData = [
  StatusModel(
    name: "Ariyan ",
    time: "10.20 AM",
    avatar: "images/ariyan.png",
  ),
  StatusModel(
    name: "Babu ",
    time: "11.20 PM",
    avatar: "images/babu.jpg ",
  ),
  StatusModel(
    name: "Harun ",
    time: "11.20 PM",
    avatar: "images/harun.png ",
  ),
  StatusModel(
    name: "Mushi ",
    time: "11.20 PM",
    avatar: '',
  ),
  StatusModel(
    name: "Ariyan ",
    time: "10.20 AM",
    avatar: "images/ariyan.png",
  ),
];
