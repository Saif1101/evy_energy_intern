import 'package:evy_internship/helpers/theme_colors.dart';
import 'package:flutter/material.dart';

class HistoryEntity {
  final String id;
  final String place;
  final String status;
  final String? date;

  HistoryEntity(
      {required this.id, required this.place, required this.status, this.date});

  Color get textColor {
    if (status == 'Completed') {
      return ThemeColors.success40;
    } else if (status == 'Charging') {
      return ThemeColors.charging40;
    } else if (status == 'Invalid') {
      return ThemeColors.error40;
    } else {
      //status = Pending
      return ThemeColors.warning40;
    }
  }

  Color get primaryColor {
    if (status == 'Completed') {
      return ThemeColors.success90;
    } else if (status == 'Charging') {
      return ThemeColors.charging90;
    } else if (status == 'Invalid') {
      return ThemeColors.error90;
    } else {
      //status = Pending
      return ThemeColors.warning90;
    }
  }

  IconData get icon {
    if (status == 'Completed') {
      return Icons.check;
    } else if (status == 'Charging') {
      return Icons.bolt;
    } else if (status == 'Invalid') {
      return Icons.do_disturb_alt_outlined;
    } else {
      //satus = Pending
      return Icons.hourglass_empty;
    }
  }
}
