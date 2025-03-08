import 'package:get/get.dart';

import '../views/home_view.dart';
import '../views/stats_view.dart';

class NavigationController extends GetxController {
  var selectedIndex = 0.obs;

  // List of pages to navigate between
  final List pages = const [HomeView(), StatsView()];

  // Function to update the selected index and change the current page
  void changePage(int index) {
    selectedIndex.value = index;
  }
}
