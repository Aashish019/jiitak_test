import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:jiitak_test/controller/profile_controller.dart';
import 'package:jiitak_test/widget/my_text_field.dart';

class ProfileInfo extends StatelessWidget {
  final profileController = Get.put(ProfileController());
  final _profileKey = GlobalKey<FormState>();
  ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Color(0xffF4F3F2),
              child: Icon(
                CupertinoIcons.back,
                color: Color(0xffB8B8B8),
              ),
            ),
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
      body: Expanded(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Form(
          key: _profileKey,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const Row(
                children: [
                  Text("店舗名"),
                  Text(
                    "*",
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
              MyTextFormField(
                controller: profileController.nameController,
                hintText: "Store Name",
              ),
              const Row(
                children: [
                  Text("代表担当者名"),
                  Text(
                    "*",
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
              MyTextFormField(
                controller: profileController.representativeController,
                hintText: "Representative Name",
              ),
              const Row(
                children: [
                  Text("代表担当者名"),
                  Text(
                    "*",
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
              MyTextFormField(
                controller: profileController.phoneController,
                hintText: "Phone Number",
              ),
              const Row(
                children: [
                  Text("代表担当者名"),
                  Text(
                    "*",
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
              MyTextFormField(
                controller: profileController.addressController,
                hintText: "Store Address",
              ),
              Container(
                height: 220,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.amber,
                    image: DecorationImage(
                        image: AssetImage("assets/images/snazzy-image.png"),
                        fit: BoxFit.cover)),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Row(
                  children: [
                    Text("店舗外観"),
                    Text(
                      "*",
                      style: TextStyle(color: Color(0xffEB5308)),
                    ),
                    Text(
                      "（最大3枚まで）",
                      style: TextStyle(color: Color(0xff9C9896)),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage("assets/images/store.png"),
                                fit: BoxFit.cover)),
                        height: 80,
                        width: 80,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage("assets/images/store.png"),
                                fit: BoxFit.cover)),
                        height: 80,
                        width: 80,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        height: 80,
                        width: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/svgs/outline-image.svg"),
                            const Text("data")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Row(
                  children: [
                    Text("店舗外観"),
                    Text(
                      "*",
                      style: TextStyle(color: Color(0xffEB5308)),
                    ),
                    Text(
                      "（1枚〜3枚ずつ追加してください）",
                      style: TextStyle(color: Color(0xff9C9896)),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage("assets/images/store2.png"),
                                fit: BoxFit.cover)),
                        height: 80,
                        width: 80,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage("assets/images/store2.png"),
                                fit: BoxFit.cover)),
                        height: 80,
                        width: 80,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage("assets/images/store2.png"),
                                fit: BoxFit.cover)),
                        height: 80,
                        width: 80,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Row(
                  children: [
                    Text("料理写真"),
                    Text(
                      "*",
                      style: TextStyle(color: Color(0xffEB5308)),
                    ),
                    Text(
                      "（最大3枚まで）",
                      style: TextStyle(color: Color(0xff9C9896)),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage("assets/images/store1.png"),
                                fit: BoxFit.cover)),
                        height: 80,
                        width: 80,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage("assets/images/store3.png"),
                                fit: BoxFit.cover)),
                        height: 80,
                        width: 80,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage("assets/images/store4.png"),
                                fit: BoxFit.cover)),
                        height: 80,
                        width: 80,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Row(
                  children: [
                    Text("メニュー写真"),
                    Text(
                      "*",
                      style: TextStyle(color: Color(0xffEB5308)),
                    ),
                    Text(
                      "（最大3枚まで）",
                      style: TextStyle(color: Color(0xff9C9896)),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage("assets/images/store5.png"),
                                fit: BoxFit.cover)),
                        height: 80,
                        width: 80,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage("assets/images/store6.png"),
                                fit: BoxFit.cover)),
                        height: 80,
                        width: 80,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage("assets/images/store7.png"),
                                fit: BoxFit.cover)),
                        height: 80,
                        width: 80,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Row(
                  children: [
                    Text("営業時間"),
                    Text(
                      "*",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Row(
                  children: [
                    Text("ランチ時間"),
                    Text(
                      "*",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 24.0),
                child: Row(
                  children: [
                    Text("定休日"),
                    Text(
                      "*",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 24.0),
                child: Row(
                  children: [
                    Text("料理カテゴリー*"),
                    Text(
                      "*",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Row(
                  children: [
                    Text("予算"),
                    Text(
                      "*",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Row(
                  children: [
                    Text("キャッチコピー"),
                    Text(
                      "*",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              MyTextFormField(
                hintText: "Catch copy",
                controller: profileController.catchController,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Row(
                  children: [
                    Text("座席数"),
                    Text(
                      "*",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              MyTextFormField(
                hintText: "Seats No",
                controller: profileController.seatController,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Row(
                  children: [
                    Text("喫煙席"),
                    Text(
                      "*",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              Container(
                height: 30,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Row(
                  children: [
                    Checkbox(
                      activeColor: const Color(0xffEE7D42),
                      value: true,
                      onChanged: (value) {},
                    ),
                    const Text("有"),
                    Checkbox(
                      activeColor: const Color(0xffEE7D42),
                      value: false,
                      onChanged: (value) {},
                    ),
                    const Text("無"),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Row(
                  children: [
                    Text("駐車場"),
                    Text(
                      "*",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              Container(
                height: 30,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Row(
                  children: [
                    Checkbox(
                      activeColor: const Color(0xffEE7D42),
                      value: true,
                      onChanged: (value) {},
                    ),
                    const Text("有"),
                    Checkbox(
                      activeColor: const Color(0xffEE7D42),
                      value: false,
                      onChanged: (value) {},
                    ),
                    const Text("無"),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Row(
                  children: [
                    Text("来店プレゼント"),
                    Text(
                      "*",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              Container(
                  height: 30,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: const Color(0xffEE7D42),
                        value: true,
                        onChanged: (value) {},
                      ),
                      const Text("有（最大３枚まで）"),
                      Checkbox(
                        activeColor: const Color(0xffEE7D42),
                        value: false,
                        onChanged: (value) {},
                      ),
                      const Text("無"),
                    ],
                  )),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage("assets/images/store8.png"),
                                fit: BoxFit.cover)),
                        height: 80,
                        width: 80,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage("assets/images/store9.png"),
                                fit: BoxFit.cover)),
                        height: 80,
                        width: 80,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage("assets/images/store10.png"),
                                fit: BoxFit.cover)),
                        height: 80,
                        width: 80,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 24.0),
                child: Row(
                  children: [
                    Text("来店プレゼント名"),
                    Text(
                      "*",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              MyTextFormField(
                hintText: "store Visit Gift",
                controller: profileController.storeController,
              ),
              InkWell(
                onTap: () {
                  if (_profileKey.currentState!.validate()) {}
                },
                child: Container(
                  height: 46,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      gradient: LinearGradient(
                          colors: [Color(0xffEE7D42), Color(0xffFFC8AB)])),
                  child: const Center(
                    child: Text(
                      "編集を保存",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
