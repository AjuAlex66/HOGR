import 'package:get/get.dart';
import 'package:hogr/views/bottomnavigation/tabone.dart';
import 'package:hogr/views/bottomnavigation/tabthree.dart';
import 'package:hogr/views/bottomnavigation/tabtwo.dart';

class GetController extends GetxController {
  final RxInt currentIndex = 0.obs;
  var pages = [const Tab1(), const Tab2(), const Tab3()].obs;
  void changePage(int index) {
    currentIndex.value = index;
  }
}
