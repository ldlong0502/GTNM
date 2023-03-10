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
                      'Ch???a l??nh c???m x??c ??? M??i N??, B??nh Thu???n',
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
                              text: '133 ????nh gi??',
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
                        '2 kh??ch ??? 1 ph??ng ng??? ??? 1 gi?????ng ??? 1 ph??ng t???m'),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text('94 Nguy???n ????nh Chi???u, M??i N??, B??nh Thu???n'),
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
                              'Kh??? d???ng',
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
                                text: "To??n b??? ng??i nh?? thu???c s??? h???u c???a Minh",
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
                            text: 'Li??n h??? v???i ch??? nh??',
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
                        'M???i l???n ?????t ph??ng bao g???m b???o v??? mi???n ph?? kh???i h???y b??? m??y ch???, li???t k?? kh??ng ch??nh x??c v?? c??c v???n ????? kh??c g???p s??? c??? khi ki???m tra.'),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Hi???n th??? th??m',
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
                      'M???t ng??i nh?? tre sinh th??i ?????p v?? ?????c ????o ???????c x??y d???ng ??? b??? ph??a t??y c???a d??ng s??ng Ayung h?????ng v??? ph??a ????ng ????? b???t b??nh minh. Aura House n???m c??ch Ubud 25 ph??t v?? c??ch Canggu 35 ph??t, ...',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Hi???n th??? th??m',
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
                      'N??i n??y cung c???p',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const ItemPlaceOffer(
                        text: 'Nh?? b???p', icon: Icons.restaurant),
                    const ItemPlaceOffer(text: 'Wifi', icon: Icons.wifi),
                    const ItemPlaceOffer(
                        text: 'Kh??ng gian l??m vi???c',
                        icon: Icons.table_restaurant_sharp),
                    const ItemPlaceOffer(
                        text: 'B??i ????? xe mi???n ph??', icon: Icons.car_repair),
                    const ItemPlaceOffer(text: 'B???n t???m', icon: Icons.pool),
                    const ItemPlaceOffer(
                        text: 'N?????c n??ng', icon: Icons.water_drop_outlined),
                    const SizedBox(
                      height: 16,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          height: 55,
                          width: MediaQuery.of(context).size.width - 64,
                          child: CustomButton(
                            text: 'Hi???n th??? th??m 42 ti???n ??ch',
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
                      'Ch??nh s??ch h???y',
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
                            'H???y tr?????c ng??y 1 th??ng 1 ????? ho??n l???i ti???n m???t ph???n. Xem l???i ch??nh s??ch h???y b??? ?????y ????? c???a m??y ch???, ??p d???ng ngay c??? khi b???n h???y b??? b???nh t???t ho???c gi??n ??o???n do Covid-19 g??y ra',
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
                      'N???i quy',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'V??o sau 1:00 PM\nR???i ??i tr?????c 11:00 AM\nT???i ??a 2 kh??ch',
                      style: TextStyle(fontSize: 16, height: 1.3),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Hi???n th??? th??m',
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
                      'An to??n & t??i s???n',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'B??o ?????ng carbon monoxide kh??ng b??o c??o b??o ?????ng kh??i kh??ng ???????c b??o c??o kh??ng ph?? h???p v???i tr??? em v?? tr??? s?? sinh',
                      style: TextStyle(fontSize: 16, height: 1.3),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Hi???n th??? th??m',
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
                        Text('B??o c??o ng??i nh?? n??y',
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
                                      text: '199.000??/',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),
                                  TextSpan(
                                      text: ' ????m',
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
                                text: '?????t ph??ng',
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
