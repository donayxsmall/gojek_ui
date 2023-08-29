import 'package:flutter/material.dart';
import 'package:gojek_ui/core.dart';
import '../view/orders_view.dart';

class OrdersController extends State<OrdersView> {
  static late OrdersController instance;
  late OrdersView view;

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
