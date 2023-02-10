// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:shimmer/shimmer.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';




class ExploreShimmer extends StatefulWidget {
  const ExploreShimmer({super.key, });
  @override
  State<ExploreShimmer> createState() => _ExploreShimmerState();
}

class _ExploreShimmerState extends State<ExploreShimmer>
    with TickerProviderStateMixin {
  late TabController _tabController;

  // scroll controller

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
      body: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        enabled: true,
        child: Column(
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
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30,
                              
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 100,
                            height: 20.0,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                      
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                      
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
                        isScrollable: false,
                        controller: _tabController,
                        physics: const BouncingScrollPhysics(),
                        tabs: tabs
                            .map(
                              (e) => FittedBox(
                                child: Column(
                                  children: [
                                     const CircleAvatar(backgroundColor: Colors.white, radius: 30,),
                                     const SizedBox(height: 10),
                                     Container(
                                      width: 100,
                                      height: 20.0,
                                      color: Colors.white,
                                    ),
                                  ],
                                  
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                     Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 20),
                        child: Container(
                                width: 300,
                                height: 2.5,
                                color: Colors.white,
                              ),
                        ),
                      
                    ),
                    const SizedBox(
                      height: 10,
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
              Container(
                width: 100,
                height: 15,
                color: Colors.white,
              ),
              Container(
                width: 50,
                height: 15,
                color: Colors.white,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Container(
            width: 40,
            height: 15,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Container(
            width: 80,
            height: 15,
            color: Colors.white,
          ),
        ),
         Padding(
          padding: EdgeInsets.only(top: 5),
          child: Container(
            width: 40,
            height: 15,
            color: Colors.white,
          ),
        ),
      ],
    );
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

