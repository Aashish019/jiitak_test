import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StampPage extends StatelessWidget {
  const StampPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffA8B1FF),
      appBar: myAppBar(),
      body: Column(
        children: [
          const Row(
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("現在の獲得数",
                              style: TextStyle(
                                color: Colors.white,
                              )),
                          Text(
                            "30",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
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
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.829,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22),
                    topRight: Radius.circular(22),
                  ),
                ),
                child: const SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
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
}

Widget _myCard() {
  return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: const Offset(1, 2),
                color: Colors.grey.shade600,
                blurRadius: 10)
          ],
          color: Colors.amber,
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      height: 200,
      width: double.infinity,
      child: const Text("data"));
}
