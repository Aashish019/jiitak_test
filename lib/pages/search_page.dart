import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jiitak_test/controller/search_controller.dart';
import 'package:jiitak_test/widget/info_card.dart';

class SearchPage extends StatelessWidget {
  final searchController = Get.put(SearchPageController());
  SearchPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          _searchBar(context),
          // _dateselection(context),
          _jobInformation(context),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        shape: const CircleBorder(),
        onPressed: () {},
        child: SvgPicture.asset(
          "assets/svgs/location.svg",
        ),
      ),
    );
  }

  Widget _searchBar(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 15.0,
            left: 24,
            right: 27,
            bottom: 12,
          ),
          child: Container(
            decoration: const BoxDecoration(color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.60,
                    decoration: const BoxDecoration(),
                    child: const TextField(
                      decoration: InputDecoration(
                        fillColor: Color(0xffF7F7F7),
                        filled: true,
                        hintText: "北海道, 札幌市", //todo: change
                        hintStyle: TextStyle(fontSize: 12),

                        contentPadding: EdgeInsets.only(
                          top: 11,
                          bottom: 11,
                          left: 13,
                          right: 29,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                      ),
                    )),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/images/Filter_icon.png"),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border_outlined,
                        size: 34,
                      ),
                      color: Colors.red,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(),
          child: Container(
            height: 33,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xffFAAA14), Color(0xffFFD78D)])),
            width: MediaQuery.of(context).size.width,
            child: Obx(() => Center(
                  child: Text(
                    "${searchController.selectedDate}",
                  ),
                )),
          ),
        ),
      ],
    );
  }

  // Widget dateselection(BuildContext context) {
  //   return Container(
  //     decoration: const BoxDecoration(color: Colors.white),
  //     child: Column(
  //       children: [
  //         Obx(
  //           () => Padding(
  //             padding: const EdgeInsets.only(left: 20.0, bottom: 25),
  //             child: EasyDateTimeLine(
  //               onDateChange: (selectedDate) {
  //                 searchController.selectedDate.value = selectedDate;
  //               },
  //               activeColor: const Color(0xffFAAA14),
  //               locale: "ja_JP",
  //               initialDate: searchController.selectedDate.value,
  //               headerProps: const EasyHeaderProps(
  //                 showHeader: false,
  //               ),
  //               dayProps: const EasyDayProps(
  //                 height: 80,
  //                 dayStructure: DayStructure.dayStrDayNum,
  //                 inactiveDayStyle: DayStyle(
  //                     dayStrStyle: TextStyle(
  //                       color: Colors.black,
  //                       fontSize: 20,
  //                       fontWeight: FontWeight.bold,
  //                     ),
  //                     dayNumStyle: TextStyle(
  //                       color: Colors.black,
  //                       fontSize: 20,
  //                       fontWeight: FontWeight.bold,
  //                     )),
  //                 activeDayStyle: DayStyle(

  //                     // decoration: BoxDecoration(color: Color(0xffFAAA14)),
  //                     dayStrStyle: TextStyle(
  //                       color: Colors.white,
  //                       fontSize: 20,
  //                       fontWeight: FontWeight.bold,
  //                     ),
  //                     dayNumStyle: TextStyle(
  //                       color: Colors.white,
  //                       fontSize: 20,
  //                       fontWeight: FontWeight.bold,
  //                     )),
  //               ),
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget _jobInformation(BuildContext context) {
    return InfoCard();
  }
}
