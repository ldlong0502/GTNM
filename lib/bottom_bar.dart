import 'package:flutter/material.dart';
import 'package:travel4/constants.dart';
import 'package:travel4/page/favorite.dart';
import 'package:travel4/page/explore.dart';
import 'package:travel4/page/inbox.dart';
import 'package:travel4/page/profile.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentTab = 0;
  final List<Widget> screens = [
    const Explore(),
    const Favorite(),
    const Inbox(),
    const Profile(),
  ];

  final pageStorageBucket = PageStorageBucket();
  Widget currentScreen = const Explore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: pageStorageBucket, child: currentScreen),
      floatingActionButton: Container(
        height: 70,
        width: 70,
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: FloatingActionButton(
          child: Container(
            width: 70,
            decoration: BoxDecoration(
              color: ColorConstants.bottomBarTripBackground,
              borderRadius: BorderRadius.circular(35),
              boxShadow:  [
                  BoxShadow(
                    color: ColorConstants.bottomBarItemPrimary,
                    spreadRadius: 1,
                    blurRadius: 5,
                    blurStyle: BlurStyle.solid,
         // changes position of shadow
                  ),
                ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.travel_explore,
                  color: Colors.white,
                ),
                SizedBox(height: 5,),
                Text(
                  'Chuyến đi',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                )
              ],
            ),
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: ColorConstants.bottomBarBackground,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(

          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: (){
                      setState(() {
                        currentTab = 0;
                        currentScreen = const Explore();
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search ,
                          color: currentTab == 0 ?  ColorConstants.bottomBarItemPrimary : ColorConstants.bottomBarItemSecondary,
                        ),
                        Text(
                          'Khám phá',
                          style: TextStyle(
                            color: currentTab == 0
                                ? ColorConstants.bottomBarItemPrimary
                                : ColorConstants.bottomBarItemSecondary,
                          ),
                        )
                      ],
                    ),
                  ),
                   MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentTab = 1;
                        currentScreen = const Favorite();
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: currentTab == 1
                              ? ColorConstants.bottomBarItemPrimary
                              : ColorConstants.bottomBarItemSecondary,
                        ),
                        Text(
                          'Yêu thích',
                          style: TextStyle(
                            color: currentTab == 1
                                ? ColorConstants.bottomBarItemPrimary
                                : ColorConstants.bottomBarItemSecondary,
                          ),
                        )
                      ],
                    ),
                  ),
                  
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentTab = 2;
                        currentScreen = const Inbox();
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.inbox,
                          color: currentTab == 2
                              ? ColorConstants.bottomBarItemPrimary
                              : ColorConstants.bottomBarItemSecondary,
                        ),
                        Text(
                          'Hộp thư',
                          style: TextStyle(
                            color: currentTab == 2
                                ? ColorConstants.bottomBarItemPrimary : ColorConstants.bottomBarItemSecondary,
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentTab = 3;
                        currentScreen = const Profile();
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.info,
                          color: currentTab == 3
                              ? Colors.red[400]
                              : Colors.black54,
                        ),
                        Text(
                          'Hồ sơ',
                          style: TextStyle(
                            color: currentTab == 3
                                ? ColorConstants.bottomBarItemPrimary : ColorConstants.bottomBarItemSecondary,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
