import 'package:flutter/material.dart';
import 'package:desain_buku_app/state_util.dart';
import '../view/bottom_view.dart';

class BottomController extends State<BottomView> implements MvcController {
  static late BottomController instance;
  late BottomView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }
}
