import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jiitak_test/controller/home_controller.dart';
import 'package:jiitak_test/pages/scan_page.dart';

class HomePage extends StatelessWidget {
  final homePageController = Get.put(HomeController());
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        elevation: 0.1,
        onPressed: () {
          Get.to(() => const ScanPage());
        },
        child: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [Color(0xffFAAA14), Color(0xffFFD78D)])),
            height: 60,
            width: 60,
            child: SvgPicture.asset(
              "assets/svgs/scan-line.svg",
            )),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            selectedItemColor: const Color(0xffFAAA14),
            type: BottomNavigationBarType.fixed,
            selectedIconTheme: const IconThemeData(color: Color(0xffFAAA14)),
            showUnselectedLabels: true,
            unselectedItemColor: Colors.black,
            unselectedLabelStyle: const TextStyle(color: Colors.black),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  "assets/svgs/search.svg",
                  color: const Color(0xffFAAA14),
                ),
                icon: SvgPicture.asset(
                  "assets/svgs/search.svg",
                  color: Colors.black,
                ),
                label: 'さがす',
              ),
              BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  "assets/svgs/office_bag.svg",
                  color: const Color(0xffFAAA14),
                ),
                icon: SvgPicture.asset("assets/svgs/office_bag.svg"),
                label: 'お仕事',
              ),
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.stop_rounded,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  label: "打刻する"),
              BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  "assets/svgs/typing.svg",
                  color: const Color(0xffFAAA14),
                ),
                icon: SvgPicture.asset("assets/svgs/typing.svg"),
                label: 'チャット',
              ),
              BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  "assets/svgs/account.svg",
                  color: const Color(0xffFAAA14),
                ),
                icon: SvgPicture.asset("assets/svgs/account.svg"),
                label: 'マイページ',
              ),
            ],
            currentIndex: homePageController.selectedIndex.value,
            onTap: (int index) {
              homePageController.selectedIndex.value = index;
            }),
      ),
      body: Obx(() =>
          homePageController.pages[homePageController.selectedIndex.value]),
    );
  }
}
