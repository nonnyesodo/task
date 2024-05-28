import 'package:flutter/cupertino.dart';
import 'package:test_task/features/service/presentation/pages/bottom_nav.dart';
import 'package:test_task/features/service/presentation/pages/new_services.dart';
import 'package:test_task/features/service/presentation/pages/service_detail.dart';
import '../page_route.dart';

class AppRoute {
  static Route onGeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.bottomNav:
        return CustomPageRoute(child: const BottomNav());
      case RouteName.newServices:
        return CustomPageRoute(child: const NewServices());
      case RouteName.serviceDetail:
        return CustomPageRoute(child: const ServiceDetail());

      default:
        return CustomPageRoute(child: const BottomNav());
    }
  }
}
