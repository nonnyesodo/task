import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ServiceStaticRepo {
  static List<BottomNavModel> bottomNav = const [
    BottomNavModel(icon: Iconsax.home_copy, title: "Home"),
    BottomNavModel(icon: Iconsax.calendar_1_copy, title: "Buukings"),
    BottomNavModel(icon: Iconsax.profile_2user_copy, title: "Customers"),
    BottomNavModel(icon: Iconsax.briefcase, title: "Services"),
    BottomNavModel(icon: Iconsax.user_copy, title: "Profile"),
  ];

  static List typeOfService = [
    'In-person meeting',
    'Virtual meeting',
    'Both In-person & Virtual meeting'
  ];
  static List depositPercent = ['40%', '50%', '60%', '100%'];
  static List timeSlot = [
    '8:00',
    '8:30',
    '9:00',
    '9:30',
    '10:00',
    '10:30',
    '11:00',
    '11:30',
    '12:00',
    '12:30',
    '13:00',
    '13:30',
  ];
}

class BottomNavModel {
  final String? title;
  final IconData? icon;
  const BottomNavModel({
    this.icon,
    this.title,
  });
}
