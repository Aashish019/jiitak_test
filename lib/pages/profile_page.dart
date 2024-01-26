import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak_test/pages/profile_info.dart';
import 'package:jiitak_test/pages/stamp_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Profile"),
            ElevatedButton(
              onPressed: () {
                Get.to(() => ProfileInfo(),
                    transition: Transition.rightToLeftWithFade);
              },
              child: const Text("edit store profile information"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => StampPage(),
                    transition: Transition.rightToLeftWithFade);
              },
              child: const Text("Stamp details"),
            )
          ],
        ),
      ),
    );
  }
}
