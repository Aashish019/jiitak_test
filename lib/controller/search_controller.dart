import 'package:get/get.dart';
import 'package:jiitak_test/model/job_information_model.dart';

class SearchPageController extends GetxController {
  var selectedDate = DateTime.now().obs;
  var jobData = JobInformationModel().obs;

  List<JobInformationModel> jobDataList = [];
  getData() {
    List<JobInformationModel> jobInformations = [
      JobInformationModel(
        name: "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）",
        imageUrl: "assets/images/1.png",
        service: "介護付き有料老人ホーム",
        dayLeft: "本日まで",
        money: "¥ 6,000",
        time: "5月 31日（水）08 : 00 ~ 17 : 00",
        address: "北海道札幌市東雲町3丁目916番地17号",
        transportation: "交通費 300円",
        providenName: "住宅型有料老人ホームひまわり倶楽部",
      ),
      JobInformationModel(
        name: "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）",
        imageUrl: "assets/images/2.png",
        service: "介護付き有料老人ホーム",
        dayLeft: "本日まで",
        money: "6,000円 ",
        time: "5月 31日（水）00 : 00 ~ 00 : 00 （休憩60分）",
        address: "北海道札幌市東雲町3丁目916番地17号",
        transportation: "交通費 300円",
        providenName: "住宅型有料老人ホームひまわり倶楽部",
      ),
      JobInformationModel(
        name: "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）",
        imageUrl: "assets/images/3.png",
        service: "介護付き有料老人ホーム",
        dayLeft: "本日まで",
        money: "6,000円 ",
        time: "5月 31日（水）00 : 00 ~ 00 : 00 （休憩60分）",
        address: "北海道札幌市東雲町3丁目916番地17号",
        transportation: "交通費 300円",
        providenName: "住宅型有料老人ホームひまわり倶楽部",
      ),
      JobInformationModel(
        name: "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）",
        imageUrl: "assets/images/4.png",
        service: "介護付き有料老人ホーム",
        dayLeft: "本日まで",
        money: "6,000円 ",
        time: "5月 31日（水）00 : 00 ~ 00 : 00 （休憩60分）",
        address: "北海道札幌市東雲町3丁目916番地17号",
        transportation: "交通費 300円",
        providenName: "住宅型有料老人ホームひまわり倶楽部",
      ),
      JobInformationModel(
        name: "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）",
        imageUrl: "assets/images/5.png",
        service: "介護付き有料老人ホーム",
        dayLeft: "本日まで",
        money: "6,000円 ",
        time: "5月 31日（水）00 : 00 ~ 00 : 00 （休憩60分）",
        address: "北海道札幌市東雲町3丁目916番地17号",
        transportation: "交通費 300円",
        providenName: "住宅型有料老人ホームひまわり倶楽部",
      ),
      JobInformationModel(
        name: "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）",
        imageUrl: "assets/images/6.png",
        service: "介護付き有料老人ホーム",
        dayLeft: "本日まで",
        money: "6,000円 ",
        time: "5月 31日（水）00 : 00 ~ 00 : 00 （休憩60分）",
        address: "北海道札幌市東雲町3丁目916番地17号",
        transportation: "交通費 300円",
        providenName: "住宅型有料老人ホームひまわり倶楽部",
      ),
    ];

    jobDataList.assignAll(jobInformations);
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
