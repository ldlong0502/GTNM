import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Xác nhận và thanh toán',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: 130,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: const Image(
                        image: NetworkImage(
                            'https://a0.muscache.com/im/pictures/d0e3bb05-a96a-45cf-af92-980269168096.jpg?im_w=1200')),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Toàn bộ ngôi nhà',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                        const Text(
                          'Chỗ để chữa bệnh tình cảm trong tâm hồn',
                          style: TextStyle(fontSize: 16),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.star_border),
                            RichText(
                                text: const TextSpan(children: [
                              TextSpan(
                                  text: '  4.80  ',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16)),
                              TextSpan(
                                  text: '(133)',
                                  style: TextStyle(
                                    // fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    fontSize: 16,
                                    // decoration: TextDecoration.underline,
                                  ))
                            ]))
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: RichText(
                  text: const TextSpan(children: [
                TextSpan(
                    text: 'Nhà của bạn thuê được bảo vệ bởi ',
                    style: TextStyle(color: Colors.black, fontSize: 16)),
                TextSpan(
                    text: 'Stay',
                    style: TextStyle(
                        color: Color(0xFFF76E11),
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text: 'Safe',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 16,
                      // decoration: TextDecoration.underline,
                    ))
              ])),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Divider(
            // height: 32,
            thickness: 10,
            color: Colors.grey.withOpacity(0.4),
          ),
          // const SizedBox(
          //   height: 16,
          // ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Chuyến đi của bạn',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Ngày',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text('3 Th2 - 4 Th3, 2023')
                      ],
                    ),
                    InkWell(
                      customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: const Text('Thay đổi',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                            )),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Số khách',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text('1 khách')
                      ],
                    ),
                    InkWell(
                      customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: const Text('Thay đổi',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                            )),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Divider(
            // height: 32,
            thickness: 10,
            color: Colors.grey.withOpacity(0.4),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'Cách thức thanh toán',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Thanh toán 1 lần',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('Thanh toán toàn bộ (\$675) bây giờ và bạn đã xong'),
                    ],
                  ),
                  Transform.scale(
                    scale: 1.2,
                    child: Radio(
                      value: 'wire',
                      groupValue: null,
                      onChanged: (value) {},
                      // activeColor: Color(0xffFFBD11),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Trả trước 1 phần',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: 300,
                        child: Text(
                          'Thanh toán \$211,37 ngay bây giờ và phần còn lại (211,36) sẽ tự động được tính vào cùng một phương thức thanh toán vào ngày 17 tháng 1 năm 2023. Không tính thêm phí.',
                          softWrap: true,
                          style: TextStyle(height: 1.2),
                          maxLines: 4,
                        ),
                      ),
                    ],
                  ),
                  Transform.scale(
                    scale: 1.2,
                    child: Radio(
                      value: 'wire',
                      groupValue: null,
                      onChanged: (value) {},
                      // activeColor: Color(0xffFFBD11),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Thêm thông tin',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline),
              )
            ]),
          ),
          const SizedBox(
            height: 16,
          ),
          Divider(
            // height: 32,
            thickness: 10,
            color: Colors.grey.withOpacity(0.4),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'Phương thức thanh toán',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Phương thức thanh toán sẵn có'),
                  CustomButton(text: 'Thêm', isFill: false)
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Thêm mã giảm giá',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                  ))
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          Divider(
            // height: 32,
            thickness: 10,
            color: Colors.grey.withOpacity(0.4),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'Yêu cầu',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Số điện thoại',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: 280,
                        child: Text(
                            'Thêm và xác nhận số điện thoại của bạn để cập nhật về việc đặt phòng của bạn'),
                      ),
                    ],
                  ),
                  const CustomButton(text: 'Thêm', isFill: false)
                ],
              ),
            ]),
          ),
          const SizedBox(
            height: 16,
          ),
          Divider(
            // height: 32,
            thickness: 10,
            color: Colors.grey.withOpacity(0.4),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Chính sách hủy',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Hủy miễn phí trước ngày 25 tháng 1. Hủy trước khi nhận phòng vào ngày 30 tháng 1 để được hoàn lại một phần tiền. Tìm hiểu thêm. Tìm hiểu thêm',
                  style: TextStyle(height: 1.3),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
              height: 52,
              width: MediaQuery.of(context).size.width - 60,
              child:
                  CustomButton(text: 'Xác nhận và thanh toán', isFill: true)),
          const SizedBox(
            height: 16,
          )
        ]),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.isFill,
  }) : super(key: key);

  final String text;
  final bool isFill;

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
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
              color: !isFill ? Colors.black : Colors.white, fontSize: 16),
        ));
  }
}
