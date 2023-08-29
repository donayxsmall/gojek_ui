import 'package:flutter/material.dart';
import 'package:gojek_ui/core.dart';
import '../view/promo_view.dart';

class PromoController extends State<PromoView> {
  static late PromoController instance;
  late PromoView view;

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
