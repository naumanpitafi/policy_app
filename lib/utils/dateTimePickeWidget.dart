import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormCustom {
  Future selectDate(BuildContext context) async {
    return await showDatePicker(
        // currentDate: DateTime.now(),

        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(const Duration(days: 365 + 365)));
  }

  Future<String> getDateNow(
    BuildContext context,
  ) async {
    var val;
    final formater =  DateFormat('yyyy-MM-dd ');
    await selectDate(context).then((value) {
      if (value != null) {
        log('is not  Empty');
        val = formater.format(value);
        // return val;
      } else {
        log('is Empty');
        val = formater.format(DateTime.now());
      }
    });
    return val.toString();
  }
}
