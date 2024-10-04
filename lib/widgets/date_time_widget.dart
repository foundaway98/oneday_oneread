import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeWidget extends StatefulWidget {
  const DateTimeWidget({super.key});

  @override
  DateTimeWidgetState createState() => DateTimeWidgetState();
}

class DateTimeWidgetState extends State<DateTimeWidget> {
  late Timer _timer;
  late DateTime _currentTime;

  @override
  void initState() {
    super.initState();
    _currentTime = DateTime.now();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _currentTime = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('yyyy/MM/dd').format(_currentTime);
    String formattedTime = DateFormat('HH:mm').format(_currentTime);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "$formattedDate $formattedTime",
          style: const TextStyle(fontWeight: FontWeight.w200),
        ),
      ],
    );
  }
}
