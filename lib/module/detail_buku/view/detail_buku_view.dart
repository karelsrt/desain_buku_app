import 'package:flutter/material.dart';
import 'package:desain_buku_app/core.dart';

import '../widget/Gambardetail.dart';

class DetailBukuView extends StatefulWidget {
  final Map<String, dynamic> item;
  const DetailBukuView({
    super.key,
    required this.item,
  });

  Widget build(context, DetailBukuController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.zero,
            child: Stack(
              children: [
                Column(
                  children: [
                    const HeaderDetail(),
                    DetailBukuView2(item: item),
                    const SizedBox(
                      height: 50,
                    ),
                    BawahDetail(item: item),
                  ],
                ),
                const Positioned(
                  top: 300,
                  left: 340,
                  child: CircleAvatar(
                    backgroundColor: Color(0xff098B5C),
                    radius: 28.0,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 28.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<DetailBukuView> createState() => DetailBukuController();
}

class BawahDetail extends StatelessWidget {
  final Map<String, dynamic> item;
  const BawahDetail({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item['penulis'].toString(),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Free Access",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff098B5C)),
                  ),
                ],
              ),
            ),
            Text(
              item['jenis'].toString(),
              style: const TextStyle(
                  fontSize: 16.0,
                  color: Color(
                    0xffBDBDBD,
                  )),
            ),
            const SizedBox(
              height: 25.0,
            ),
            const Text(
              "Description",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              item['sinposis'].toString(),
              style: const TextStyle(
                  fontSize: 13.0,
                  color: Color(
                    0xffbdbdbd,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 65,
                decoration: const BoxDecoration(
                  color: Color(0xffF7F7F7),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Rating",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "4.8",
                            style: TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      Column(
                        children: [
                          Text(
                            "Number of pages",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "180 Page",
                            style: TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      Column(
                        children: [
                          Text(
                            "Language",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "Eng",
                            style: TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(12.0),
                decoration: const BoxDecoration(
                  color: Color(0xff098B5C),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: const Text(
                  textAlign: TextAlign.center,
                  "Read Now",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderDetail extends StatelessWidget {
  const HeaderDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Get.offAll(
              const BottomView(),
            );
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 15,
          ),
        ),
        const Text(
          "Book Details",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add,
            size: 15,
          ),
        ),
      ],
    );
  }
}
