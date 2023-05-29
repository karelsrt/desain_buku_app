import 'package:flutter/material.dart';

import '../controller/detail_buku_controller.dart';

class DetailBukuView2 extends StatefulWidget {
  final Map<String, dynamic> item;
  const DetailBukuView2({
    super.key,
    required this.item,
  });

  Widget build(context, DetailBukuController2 controller) {
    controller.view = this;
    return SizedBox(
      height: 230,
      width: 180,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        child: Image.network(
          item['cover'],
          width: 200.0,
          height: 200.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  State<DetailBukuView2> createState() => DetailBukuController2();
}
