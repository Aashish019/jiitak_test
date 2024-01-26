import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak_test/controller/search_controller.dart';

class InfoCard extends StatelessWidget {
  final searchController = Get.put(SearchPageController());

  InfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: searchController.jobDataList.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return dateselection(context);
        }
        return Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 25.0),
          child: Container(
              // padding: const EdgeInsets.all(1),
              height: MediaQuery.of(context).size.height * 0.45,
              decoration: const BoxDecoration(
                boxShadow: [BoxShadow()],
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                      child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(searchController
                                .jobDataList[index - 1].imageUrl
                                .toString()),
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 7,
                          left: -6,
                          child: _dayLeft(context, index - 1)),
                    ],
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 12,
                      top: 16,
                      bottom: 23,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          searchController.jobDataList[index - 1].name
                              .toString(),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3, bottom: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 2),
                                  decoration: const BoxDecoration(
                                      color: Color(0xffFEF7EC),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  child: Text(
                                    searchController
                                        .jobDataList[index - 1].service
                                        .toString(),
                                    style: const TextStyle(
                                        color: Color(0xffFAAA14), fontSize: 11),
                                  )),
                              Text(
                                searchController.jobDataList[index - 1].money
                                    .toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Text(searchController.jobDataList[index - 1].time
                            .toString()),
                        Text(searchController.jobDataList[index - 1].address
                            .toString()),
                        Text(searchController
                            .jobDataList[index - 1].transportation
                            .toString()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              searchController
                                  .jobDataList[index - 1].providenName
                                  .toString(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffC0C0C0)),
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Icon(Icons.favorite_border_rounded,
                                  color: Color(0xffC0C0C0)),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
                ],
              )),
        );
      },
    ));
  }

  Widget _dayLeft(BuildContext context, int index) {
    return Container(
      decoration: const BoxDecoration(
          color: Color(0xffFF6262),
          borderRadius: BorderRadius.all(Radius.circular(3))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
        child: Center(
          child: Text(
            searchController.jobDataList[index].dayLeft.toString(),
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10),
          ),
        ),
      ),
    );
  }

  Widget dateselection(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Obx(
            () => Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 25, top: 25),
              child: EasyDateTimeLine(
                onDateChange: (selectedDate) {
                  searchController.selectedDate.value = selectedDate;
                },
                activeColor: const Color(0xffFAAA14),
                locale: "ja_JP",
                initialDate: searchController.selectedDate.value,
                headerProps: const EasyHeaderProps(
                  showHeader: false,
                ),
                dayProps: const EasyDayProps(
                  height: 80,
                  dayStructure: DayStructure.dayStrDayNum,
                  inactiveDayStyle: DayStyle(
                      dayStrStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      dayNumStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  activeDayStyle: DayStyle(

                      // decoration: BoxDecoration(color: Color(0xffFAAA14)),
                      dayStrStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      dayNumStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
