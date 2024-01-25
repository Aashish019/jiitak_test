import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(child: Icon(CupertinoIcons.back)),
          ),
        ),
        title: const Text(
          "店舗プロフィール編集",
          style: TextStyle(fontSize: 15),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Badge(
              label: Text(
                "99+",
              ),
              child: Icon(
                Icons.notifications_none,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
