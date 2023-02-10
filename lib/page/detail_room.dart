import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'payment.dart';

class DetailRoom extends StatefulWidget {
  const DetailRoom({super.key});

  @override
  State<DetailRoom> createState() => _DetailRoomState();
}

class _DetailRoomState extends State<DetailRoom> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.32,
                    width: MediaQuery.of(context).size.width,
                    child: PageView.builder(
                      onPageChanged: (value) => setState(() {
                        index = value;
                      }),
                      itemCount: 3,
                      itemBuilder: (context, index) => Image(
                          fit: BoxFit.fill,
                          height: MediaQuery.of(context).size.height * 0.32,
                          width: MediaQuery.of(context).size.width,
                          image: const NetworkImage(
                              'https://a0.muscache.com/im/pictures/d0e3bb05-a96a-45cf-af92-980269168096.jpg?im_w=1200')),
                    ),
                  ),
                  Positioned(
                      top: 25,
                      left: 16,
                      // right: 0,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(14),
                          backgroundColor: Colors.white, // <-- Button color
                          foregroundColor: Colors.white, // <-- Splash color
                        ),
                        child:
                            const Icon(Icons.arrow_back, color: Colors.black),
                      )),
                  Positioned(
                      top: 25,
                      right: 16,
                      // right: 0,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(14),
                          backgroundColor: Colors.white, // <-- Button color
                          foregroundColor: Colors.white, // <-- Splash color
                        ),
                        child: const Icon(Icons.favorite_border,
                            color: Colors.black),
                      )),
                  Positioned(
                      top: 25,
                      // left: 16,
                      right: 96,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(14),
                          backgroundColor: Colors.white, // <-- Button color
                          foregroundColor: Colors.white, // <-- Splash color
                        ),
                        child: const Icon(Icons.ios_share, color: Colors.black),
                      )),
                  Positioned(
                      bottom: 16,
                      // left: 16,
                      right: 16,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                            color: const Color(0x00000000).withOpacity(0.6),
                            borderRadius: BorderRadius.circular(6)),
                        child: Text(
                          '${index + 1}/14',
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Chữa lành cảm xúc ở Mũi Né, Bình Thuận',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.star_border),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                              text: '  4.80 |  ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500)),
                          TextSpan(
                              text: '133 Đánh giá',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontSize: 16,
                                height: 1.3,
                                decoration: TextDecoration.underline,
                              ))
                        ]))
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                        '2 khách • 1 phòng ngủ • 1 giường • 1 phòng tắm'),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text('94 Nguyễn Đình Chiểu, Mũi Né, Bình Thuận'),
                    const SizedBox(
                      height: 8,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Khả dụng',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text('8 Th2 - 13 Th2, 2023'),
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                            child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "Toàn bộ ngôi nhà thuộc sở hữu của Minh",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              WidgetSpan(
                                child: Icon(Icons.gpp_good, size: 32),
                              ),
                            ],
                          ),
                        )),
                        const SizedBox(
                          width: 32,
                        ),
                        const SizedBox(
                          height: 60,
                          width: 60,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://a0.muscache.com/im/pictures/d0e3bb05-a96a-45cf-af92-980269168096.jpg?im_w=1200'),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          height: 55,
                          width: MediaQuery.of(context).size.width - 64,
                          child: CustomButton(
                            text: 'Liên hệ với chủ nhà',
                            isFill: false,
                            onPress: () {},
                          )),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: 'Stay',
                          style: TextStyle(
                              color: Color(0xFFF76E11),
                              fontSize: 34,
                              fontWeight: FontWeight.w600)),
                      TextSpan(
                          text: 'safe',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 34,
                              fontWeight: FontWeight.w600))
                    ])),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                        'Mỗi lần đặt phòng bao gồm bảo vệ miễn phí khỏi hủy bỏ máy chủ, liệt kê không chính xác và các vấn đề khác gặp sự cố khi kiểm tra.'),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Hiển thị thêm',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          height: 1.3,
                          decoration: TextDecoration.underline),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Một ngôi nhà tre sinh thái đẹp và độc đáo được xây dựng ở bờ phía tây của dòng sông Ayung hướng về phía đông để bắt bình minh. Aura House nằm cách Ubud 25 phút và cách Canggu 35 phút, ...',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Hiển thị thêm',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          height: 1.3,
                          decoration: TextDecoration.underline),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Nơi này cung cấp',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const ItemPlaceOffer(
                        text: 'Nhà bếp', icon: Icons.restaurant),
                    const ItemPlaceOffer(text: 'Wifi', icon: Icons.wifi),
                    const ItemPlaceOffer(
                        text: 'Không gian làm việc',
                        icon: Icons.table_restaurant_sharp),
                    const ItemPlaceOffer(
                        text: 'Bãi đổ xe miễn phí', icon: Icons.car_repair),
                    const ItemPlaceOffer(text: 'Bồn tắm', icon: Icons.pool),
                    const ItemPlaceOffer(
                        text: 'Nước nóng', icon: Icons.water_drop_outlined),
                    const SizedBox(
                      height: 16,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          height: 55,
                          width: MediaQuery.of(context).size.width - 64,
                          child: CustomButton(
                            text: 'Hiển thị thêm 42 tiện ích',
                            isFill: false,
                            onPress: () {},
                          )),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Chính sách hủy',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Flexible(
                          child: Text(
                            'Hủy trước ngày 1 tháng 1 để hoàn lại tiền một phần. Xem lại chính sách hủy bỏ đầy đủ của máy chủ, áp dụng ngay cả khi bạn hủy bỏ bệnh tật hoặc gián đoạn do Covid-19 gây ra',
                            style: TextStyle(fontSize: 16, height: 1.3),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Nội quy',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Vào sau 1:00 PM\nRời đi trước 11:00 AM\nTối đa 2 khách',
                      style: TextStyle(fontSize: 16, height: 1.3),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Hiển thị thêm',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          height: 1.3,
                          decoration: TextDecoration.underline),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'An toàn & tài sản',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Báo động carbon monoxide không báo cáo báo động khói không được báo cáo không phù hợp với trẻ em và trẻ sơ sinh',
                      style: TextStyle(fontSize: 16, height: 1.3),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Hiển thị thêm',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          height: 1.3,
                          decoration: TextDecoration.underline),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: const [
                        Icon(Icons.flag_outlined),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Báo cáo ngôi nhà này',
                            style: TextStyle(
                                // fontWeight: FontWeight.w600,
                                decoration: TextDecoration.underline))
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              )
            ],
          ),
        )),
        Align(
          child: Container(
            padding: EdgeInsets.zero,
            height: 85,
            child: Column(
              children: [
                const Divider(
                  color: Colors.grey,
                  height: 1,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                text: const TextSpan(children: [
                                  TextSpan(
                                      text: '199.000đ/',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),
                                  TextSpan(
                                      text: ' đêm',
                                      style: TextStyle(color: Colors.black))
                                ]),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text('30 Th - 4 Th',
                                  style: TextStyle(
                                      height: 1.3,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline))
                            ],
                          ),
                          SizedBox(
                              height: 55,
                              width: 140,
                              child: CustomButton(
                                text: 'Đặt phòng',
                                isFill: true,
                                onPress: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Payment()));
                                },
                              ))
                        ]),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.isFill,
    required this.onPress,
  }) : super(key: key);

  final String text;
  final bool isFill;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            // padding: MaterialStateProperty.all(
            //     const EdgeInsets.symmetric(horizontal: 128, vertical: 16)),
            backgroundColor: MaterialStateProperty.all(
                !isFill ? Colors.white : const Color(0xFFF76E11)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: BorderSide(
                        color: !isFill
                            ? Colors.black
                            : const Color(0xFFF76E11))))),
        onPressed: () {
          onPress();
        },
        child: Text(
          text,
          style: TextStyle(
              color: !isFill ? Colors.black : Colors.white, fontSize: 16),
        ));
  }
}

class ItemPlaceOffer extends StatelessWidget {
  const ItemPlaceOffer({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
          Icon(
            icon,
            size: 32,
          )
        ],
      ),
    );
  }
}
