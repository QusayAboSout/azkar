import 'package:flutter/material.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';

class UpperPart extends StatelessWidget {
  const UpperPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: Colors.grey[800],),
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              DateFormat('dd/MM/yyyy').format(DateTime.now()),
              style: commonTextStyle,
            ),
            Text(
              DateFormat('EEEE', 'ar').format(DateTime.now()),
              style: commonTextStyle,
            ),
            Text(
              HijriCalendar.now().toFormat('mm/dd/yyyy'),
              style: commonTextStyle,
            )
          ],
        ),
      ),
    );
  }
}

const TextStyle commonTextStyle = TextStyle(
  fontSize: 20,
        color: Color.fromRGBO(196,218,210,1),
);
