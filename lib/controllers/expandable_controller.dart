import 'package:get/get.dart';

class ExpandableController extends GetxController {
  RxList<bool> expandedStates = List.filled(5, false).obs;

  // Toggles the expansion state of a specific index
  void toggleExpansion(int index) {
    expandedStates[index] = !expandedStates[index];
  }
}