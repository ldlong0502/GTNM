// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:travel4/constants.dart';
import 'package:travel4/widgets/chart_price_range.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> with SingleTickerProviderStateMixin {
  final currentAddress = '100, Hung Vuong Street, TpHCM';
  late TabController _tabController;
  var index = 0;

  final tabs = <Tabs>[
    Tabs(index: 0, text: 'Nổi bật', assetIcon: 'assets/icons/outstanding.svg'),
    Tabs(index: 1, text: 'Ưa thích', assetIcon: 'assets/icons/favorite.svg'),
    Tabs(
        index: 2,
        text: 'Phòng riêng',
        assetIcon: 'assets/icons/private_room.svg'),
    Tabs(
        index: 3,
        text: 'Nhà trên biển',
        assetIcon: 'assets/icons/ship_house.svg'),
    Tabs(
        index: 4,
        text: 'Căn hộ cao cấp',
        assetIcon: 'assets/icons/top_apartment.svg'),
    Tabs(index: 5, text: 'Villa', assetIcon: 'assets/icons/villa.svg'),
  ];

  var indexTab = 0;
  var selectBedroomIndex = 0;
  var selectBedIndex = 0;
  var selectBathroomIndex = 0;
  final bedRoomList = <DataRoom>[
    DataRoom(index: 0, text: 'Any'),
    DataRoom(index: 1, text: '1'),
    DataRoom(index: 2, text: '2'),
    DataRoom(index: 3, text: '3+'),
    DataRoom(index: 4, text: '5+'),
    DataRoom(index: 5, text: '7+'),
  ];

  final bedList = <DataRoom>[
    DataRoom(index: 0, text: 'Any'),
    DataRoom(index: 1, text: '1'),
    DataRoom(index: 2, text: '2'),
    DataRoom(index: 3, text: '3+'),
    DataRoom(index: 4, text: '5+'),
    DataRoom(index: 5, text: '7+'),
  ];

  final bathRoomList = <DataRoom>[
    DataRoom(index: 0, text: 'Any'),
    DataRoom(index: 1, text: '1'),
    DataRoom(index: 2, text: '2'),
    DataRoom(index: 3, text: '3+'),
    DataRoom(index: 4, text: '5+'),
    DataRoom(index: 5, text: '7+'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabs.length)
      ..addListener(() {
        if (!_tabController.indexIsChanging) {
          setState(() {
            indexTab = _tabController.index;
          });
        }
      });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.redAccent[100],
                            radius: 30,
                            child: Image.asset(
                              'assets/images/logo.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          '4Travel',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: ColorConstants.bottomBarItemPrimary),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: ColorConstants.bottomBarItemPrimary,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0.0),
                          child: SvgPicture.asset('assets/icons/map.svg'),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Địa chỉ hiện tại',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.normal),
                            ),
                            Text(
                              currentAddress,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: ColorConstants.textColor1),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0.0),
                          child: InkWell(
                              borderRadius: BorderRadius.circular(10),
                              onTap: () {
                                showFilter();
                              },
                              child:
                                  SvgPicture.asset('assets/icons/filter.svg')),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          Expanded(
              flex: 6,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: TabBar(
                      isScrollable: true,
                      controller: _tabController,
                      physics: const BouncingScrollPhysics(),
                      labelColor: Colors.black,
                      unselectedLabelColor: ColorConstants.textColor1,
                      indicatorColor: Colors.black,
                      tabs: tabs
                          .map(
                            (e) => FittedBox(
                              child: Tab(
                                icon: SvgPicture.asset(
                                  e.assetIcon!,
                                  colorFilter: ColorFilter.mode(
                                      indexTab == e.index!
                                          ? Colors.black
                                          : ColorConstants.textColor1,
                                      BlendMode.srcIn),
                                ),
                                text: e.text!,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  const Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 20),
                      child: Text(
                        'Đề xuất cho bạn',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        SingleChildScrollView(
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              itemCount: 10,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  height: 350,
                                  width: double.infinity,
                                  margin: const EdgeInsets.all(20),
                                  child: itemRender(),
                                );
                              }),
                        ),
                        const Text('hi'),
                        const Text('hi'),
                        const Text('hi'),
                        const Text('hi'),
                        const Text('hi'),
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }

  Widget itemRender() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 250,
          child: Stack(
            children: [
              Carousel(
                dotSize: 6.0,
                dotSpacing: 15.0,
                dotPosition: DotPosition.bottomCenter,
                autoplay: false,
                overlayShadowColors: Colors.transparent,
                animationDuration: const Duration(milliseconds: 1000),
                images: [
                  Image.asset('assets/images/1.png', fit: BoxFit.cover),
                  Image.asset('assets/images/2.png', fit: BoxFit.cover),
                  Image.asset('assets/images/3.png', fit: BoxFit.cover),
                  Image.asset('assets/images/4.png', fit: BoxFit.cover),
                  Image.asset('assets/images/5.png', fit: BoxFit.cover),
                ],
              ),
              Positioned(
                  right: 10,
                  top: 10,
                  child: IconButton(
                    icon: const Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Hotel',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                children: const [Icon(Icons.star), Text('4.1')],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            'Cách 1 km',
            style: TextStyle(
              color: ColorConstants.textColor1,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            'Ngày 20 - 23 , Tháng 2',
            style: TextStyle(
              color: ColorConstants.textColor1,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 5),
          child: Text(
            '100.5 \$',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  void showFilter() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      builder: (context) => StatefulBuilder(
        builder: (BuildContext context, StateSetter updateState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.95,
            child: Scaffold(
              bottomSheet: Container(
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                        width: 1, color: ColorConstants.bottomBarItemSecondary),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      child: const Text('Xóa tất cả',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.black87)),
                      onPressed: () {},
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorConstants.bottomBarItemPrimary),
                        onPressed: () {},
                        child: const Text('Hiện 100 nhà'))
                  ],
                ),
              ),
              body: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 15, bottom: 20),
                    height: 5,
                    width: 40,
                    decoration: BoxDecoration(
                        color: ColorConstants.bottomBarItemPrimary,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            height: 300,
                            width: double.infinity,
                            child: Column(children: const [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text(
                                    'Khoảng giá',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 250,
                                width: double.infinity,
                                child: ChartPriceRange(),
                              ),
                            ]),
                          ),
                          Divider(
                            thickness: 2,
                            indent: 20,
                            endIndent: 20,
                            color: ColorConstants.bottomBarItemSecondary,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20, top: 20),
                              child: Text(
                                'Loại nơi ở',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 200,
                            child: Column(
                              children: [
                                ListTile(
                                    title: const Text(
                                      'Toàn bộ phòng',
                                    ),
                                    subtitle: Text(
                                      'Toàn bộ nơi ở dành cho bạn',
                                      style: TextStyle(
                                          color: ColorConstants
                                              .bottomBarItemSecondary),
                                    ),
                                    trailing: Checkbox(
                                      value: false,
                                      onChanged: (_) {},
                                    )),
                                ListTile(
                                    title: const Text(
                                      'Phòng riêng',
                                    ),
                                    subtitle: Text(
                                      'Phòng riêng của bạn trong một ngôi nhà hoặc khách sạn, cùng với không gian sinh hoạt chung',
                                      style: TextStyle(
                                          color: ColorConstants
                                              .bottomBarItemSecondary),
                                    ),
                                    trailing: Checkbox(
                                      value: false,
                                      onChanged: (_) {},
                                    )),
                                ListTile(
                                    title: const Text(
                                      'Phòng chung',
                                    ),
                                    subtitle: Text(
                                      'Không gian để ngủ và khu vực khác có thể sinh hoạt chung',
                                      style: TextStyle(
                                          color: ColorConstants
                                              .bottomBarItemSecondary),
                                    ),
                                    trailing: Checkbox(
                                      value: false,
                                      onChanged: (_) {},
                                    )),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 2,
                            indent: 20,
                            endIndent: 20,
                            color: ColorConstants.bottomBarItemSecondary,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20, top: 20),
                              child: Text(
                                'Phòng và phòng ngủ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 400,
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 20.0, top: 10),
                                  child: Text(
                                    'Bedroom',
                                    style: TextStyle(
                                        fontSize: 15, fontWeight: FontWeight.w500),
                                  ),
                                ),
                                roomListView( 'bedroom', updateState),
                                const Padding(
                                  padding: EdgeInsets.only(left: 20.0, top: 10),
                                  child: Text(
                                    'Bed',
                                    style: TextStyle(
                                        fontSize: 15, fontWeight: FontWeight.w500),
                                  ),
                                ),
                                roomListView( 'bed', updateState),
                                const Padding(
                                  padding: EdgeInsets.only(left: 20.0, top: 10),
                                  child: Text(
                                    'Bathroom',
                                    style: TextStyle(
                                        fontSize: 15, fontWeight: FontWeight.w500),
                                  ),
                                ),
                                roomListView( 'bathroom', updateState),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }

  Widget roomListView(String title , StateSetter updateState) {
    if (title == 'bedroom') {
      return Container(
          height: 50,
          width: double.infinity,
          margin: const EdgeInsets.only(left: 20.0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(top: 10, right: 15),
                child: InkWell(
                  radius: 10,
                  onTap: () => updateState(() {
                    selectBedroomIndex = index;
                  }),
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                            width: 1,
                            color: selectBedroomIndex == bedRoomList[index].index
                                ? Colors.black
                                : ColorConstants.borderColor1),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(child: Text(bedRoomList[index].text!)),
                  ),
                ),
              );
            },
          ));
    } else if (title == 'bed') {
      return Container(
          height: 50,
          width: double.infinity,
          margin: const EdgeInsets.only(left: 20.0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only( top: 10 , right: 15),
                child: InkWell(
                 radius: 10,
                  onTap: () => updateState(() {
                    selectBedIndex = index;
                  }),
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                            width: 1, color: selectBedIndex == bedList[index].index
                                ? Colors.black
                                : ColorConstants.borderColor1),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(child: Text(bedList[index].text!)),
                  ),
                ),
              );
            },
          ));
    } else {
      return Container(
          height: 50,
          width: double.infinity,
          margin: const EdgeInsets.only(left: 20.0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(top: 10, right: 15),
                child: InkWell(
                  radius: 10,
                  onTap: () => updateState(() {
                    selectBathroomIndex = index;
                  }),
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                            width: 1,
                            color:
                                selectBathroomIndex == bathRoomList[index].index
                                    ? Colors.black
                                    : ColorConstants.borderColor1),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(child: Text(bathRoomList[index].text!)),
                  ),
                ),
              );
            },
          ));
    }
  }
}

class Tabs {
  int? index;
  String? text;
  String? assetIcon;
  Tabs({
    this.index,
    this.text,
    this.assetIcon,
  });
}

class DataRoom {
  int? index;
  String? text;
  DataRoom({
    this.index,
    this.text,
  });
}
