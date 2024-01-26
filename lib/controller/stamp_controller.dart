import 'package:get/get.dart';
import 'package:jiitak_test/model/stamp_content_model.dart';

class StampController extends GetxController {
  List<StampContentModel> stampDataList = [];
  getContent() {
    List<StampContentModel> contentinfo = [
      StampContentModel(
          date: "2021 / 11 / 18", description: "スタンプを獲得しました。", ltext: "1 個"),
      StampContentModel(
          date: "2021 / 11 / 17", description: "スタンプを獲得しました。", ltext: "1 個"),
      StampContentModel(
          date: "2021 / 11 / 16", description: "スタンプを獲得しました。", ltext: "1 個"),
      StampContentModel(
          date: "2021 / 11 / 13", description: "スタンプを獲得しました。", ltext: "1 個"),
      StampContentModel(
          date: "2021 / 11 / 12", description: "スタンプを獲得しました。", ltext: "1 個"),
    ];
    stampDataList.assignAll(contentinfo);
  }

  @override
  void onInit() {
    getContent();
    super.onInit();
  }
}
