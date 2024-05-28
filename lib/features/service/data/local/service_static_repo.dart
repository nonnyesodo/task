import 'package:test_task/features/service/data/local/service_images.dart';

class ServiceStaticRepo {
  static List<BottomNavModel> bottomNav = const [
    BottomNavModel(image: ServiceImages.home, title: "Home"),
    BottomNavModel(image: ServiceImages.calendar, title: "Buukings"),
    BottomNavModel(image: ServiceImages.community, title: "Customers"),
    BottomNavModel(image: ServiceImages.briefcase, title: "Services"),
    BottomNavModel(image: ServiceImages.user, title: "Profile"),
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
  final String? title, image;
  const BottomNavModel({
    this.image,
    this.title,
  });
}
