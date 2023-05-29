import 'package:flutter/material.dart';
import 'package:desain_buku_app/state_util.dart';
import '../view/detail_buku_view.dart';
import '../widget/Gambardetail.dart';

class DetailBukuController extends State<DetailBukuView>
    implements MvcController {
  static late DetailBukuController instance;
  late DetailBukuView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}

class DetailBukuController2 extends State<DetailBukuView2>
    implements MvcController {
  static late DetailBukuController2 instance;
  late DetailBukuView2 view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
