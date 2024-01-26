import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jiitak_test/controller/stamp_controller.dart';

class StampPage extends StatelessWidget {
  final stampController = Get.put(StampController());
  StampPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffA8B1FF),
      appBar: myAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            color: Colors.transparent,
            height: 70,
            child: const Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Mer キッチン",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("現在の獲得数",
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            Text(
                              "30",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 25,
                                  color: Colors.white),
                            ),
                            Text("個", style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * .82,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(22),
                          topRight: Radius.circular(22)),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        //stamp card
                        Container(
                          color: Colors.transparent,
                          height: 250,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 1,
                                child: ListView.builder(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 10, bottom: 10),
                                  physics: const BouncingScrollPhysics(),
                                  itemCount: 2,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return _myCard();
                                  },
                                ),
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Text(
                                      "2 / 2枚目",
                                      style: TextStyle(
                                        fontFamily: 'NotoSansJP',
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff454545),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        //content
                        Expanded(
                          child: Column(
                            children: [
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Text(
                                      "スタンプ獲得履歴",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: ListView.separated(
                                  separatorBuilder: (context, index) =>
                                      const Divider(
                                    height: 1,
                                    indent: 15,
                                    endIndent: 15,
                                  ),
                                  physics: const BouncingScrollPhysics(),
                                  itemCount:
                                      stampController.stampDataList.length,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      title: Text(
                                        stampController
                                            .stampDataList[index].date
                                            .toString(),
                                        style: const TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'NotoSansJP',
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xffB5B5B5)),
                                      ),
                                      subtitle: Text(
                                        stampController
                                            .stampDataList[index].description
                                            .toString(),
                                        style: const TextStyle(fontSize: 14),
                                      ),
                                      trailing: Text(
                                        stampController
                                            .stampDataList[index].ltext
                                            .toString(),
                                        style: const TextStyle(
                                            fontFamily: 'NotoSansJP',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  myAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: InkWell(
        onTap: () {
          Get.back();
        },
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
              backgroundColor: Color(0XFF949EFF),
              child: Icon(
                CupertinoIcons.back,
                color: Colors.white,
              )),
        ),
      ),
      title: const Text(
        "スタンプカード詳細",
        style: TextStyle(fontSize: 15, color: Colors.white),
      ),
      centerTitle: true,
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 15.0),
          child: Icon(
            Icons.remove_circle_outline_rounded,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    );
  }

  Widget _myCard() {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, right: 10),
      child: Container(
          padding: const EdgeInsets.all(1),
          height: 250,
          width: 340,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(
                  offset: const Offset(1, 2),
                  color: Colors.grey.shade600,
                  blurRadius: 10)
            ],
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: GridView.builder(
            itemCount: 15,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5),
            itemBuilder: (context, index) {
              return Container(
                  height: 30,
                  width: 30,
                  padding: const EdgeInsets.all(10),
                  child: Stack(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(),
                        child: SvgPicture.asset("assets/svgs/Star.svg"),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(),
                        child: const Icon(
                          Icons.check_rounded,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ));
            },
          )),
    );
  }
}
