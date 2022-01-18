import 'package:flutter/material.dart';

class CallModel {
  final String name;
  final String time;
  final String avatar;
  final Icon callType;

  CallModel(
      {required this.name,
      required this.time,
      required this.avatar,
      required this.callType});
  static Icon callReceived = Icon(
    Icons.call_received,
    size: 18,
    color: Colors.green,
  );
  static Icon callMissed = Icon(
    Icons.call_missed,
    size: 18,
    color: Colors.red,
  );
}

List<CallModel> callData = [
  CallModel(
    name: "Ariyan ",
    time: "10.20 AM",
    callType: CallModel.callReceived,
    avatar: "images/ariyan.png",
  ),
  CallModel(
    name: "Babu ",
    time: "11.20 PM",
    callType: CallModel.callMissed,
    avatar: "images/babu.jpg ",
  ),
  CallModel(
    name: "Harun ",
    time: "11.20 PM",
    callType: CallModel.callReceived,
    avatar: "images/harun.png ",
  ),
  CallModel(
    name: "Mushi ",
    time: "11.20 PM",
    callType: CallModel.callMissed,
    avatar: '',
  ),
  CallModel(
    name: "Ariyan ",
    time: "10.20 AM",
    callType: CallModel.callReceived,
    avatar: "images/ariyan.png",
  ),
  CallModel(
    name: "Harun ",
    time: "11.20 PM",
    callType: CallModel.callReceived,
    avatar: "images/harun.png ",
  ),
  CallModel(
    name: "Mushi ",
    time: "11.20 PM",
    callType: CallModel.callMissed,
    avatar: '',
  ),
];
