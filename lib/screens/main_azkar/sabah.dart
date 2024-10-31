import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';

class Sabah extends StatelessWidget {
  const Sabah({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('أذكار الصباح'),
        centerTitle: true,
      ),
      body:  Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('${DateTime.now()}'),
                  Text(DateFormat('EEEE').format(DateTime.now())),
                  Text(HijriCalendar.now().toFormat('mm dd yy'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
