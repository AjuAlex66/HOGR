import 'dart:convert';
import 'package:get/get.dart';
import 'package:hogr/model/sampledatamodel.dart';
import 'package:hogr/utils/helper.dart';
import 'package:http/http.dart' as http;

class GetController extends GetxController {
  RxBool isLoading = true.obs;
  RxBool isError = false.obs;
  RxList<SampleDataModel>? sampleData = <SampleDataModel>[].obs;
  // final RxInt currentIndex = 0.obs;
  // var pages = [const Tab1(), const Tab2(), const Tab3()].obs;
  // void changePage(int index) {
  //   currentIndex.value = index;
  // }

  void fetchSampleData() async {
    try {
      isLoading(true);
      http.Response response = await http
          .get(Uri.tryParse('https://jsonplaceholder.typicode.com/posts')!);
      if (response.statusCode == 200) {
        List<dynamic> jsonData = jsonDecode(response.body);
        sampleData!
            .addAll(jsonData.map((e) => SampleDataModel.fromJson(e)).toList());
        isError.value = false;
      } else {
        Helper.showLog('error fetching data');
        isError.value = true;
      }
    } catch (e) {
      Helper.showLog('Error while getting data is $e');
      isError.value = true;
    } finally {
      isLoading(false);
    }
  }
}
