import 'package:flutter/material.dart';
import 'package:desain_buku_app/core.dart';

class TreadingnowView extends StatefulWidget {
  const TreadingnowView({Key? key}) : super(key: key);

  Widget build(context, TreadingnowController controller) {
    controller.view = this;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Trending Now",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          SingleChildScrollView(
            controller: ScrollController(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(controller.itembuku.length, (index) {
                var items = controller.itembuku[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 150.0,
                      child: InkWell(
                        onTap: () {
                          Get.to(DetailBukuView(
                            item: items,
                          ));
                        },
                        child: Row(
                          children: [
                            Container(
                              width: 120.0,
                              color: Colors.transparent,
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                child: Image.network(
                                  items['cover'],
                                  width: 200.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 9.0,
                    ),
                    Text(
                      items['penulis'],
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xffBDBDBD),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      items['jenis'],
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<TreadingnowView> createState() => TreadingnowController();
}
