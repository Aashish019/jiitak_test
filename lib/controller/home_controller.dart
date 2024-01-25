import 'package:get/get.dart';
import 'package:jiitak_test/pages/bussiness_page.dart';
import 'package:jiitak_test/pages/chat_page.dart';
import 'package:jiitak_test/pages/profile_page.dart';
import 'package:jiitak_test/pages/scan_page.dart';
import 'package:jiitak_test/pages/search_page.dart';

class HomeController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final List pages = [
    SearchPage(),
    const BussinessPage(),
    const ScanPage(),
    const ChatPage(),
    const ProfilePage(),
  ];
}
