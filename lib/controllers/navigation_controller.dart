import 'package:get/get.dart';

import '../views/home_view.dart';
import '../views/stats_view.dart';

class NavigationController extends GetxController {
  var selectedIndex = 0.obs;
  final List pages = [HomeView(), StatsView()];

  void changePage(int index) {
    selectedIndex.value = index;
  }
}
