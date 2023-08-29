import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek_ui/core.dart';
import '../view/main_navigation_view.dart';

class MainNavigationController extends State<MainNavigationView> {
  static late MainNavigationController instance;
  late MainNavigationView view;

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
  } // Indeks ikon yang terpilih

  List<Widget> pages = [
    // Daftar tampilan yang akan ditampilkan di bawah ikon
    // Anda dapat menambahkan lebih banyak tampilan sesuai kebutuhan Anda.
    const Center(child: Text('Beranda')),
    const Center(child: Text('Pesanan')),
    const Center(child: Text('Profil')),
  ];

  List menuBottom = [
    {
      "icon": const Icon(Icons.home),
      "label": "Home",
    },
    {
      "icon": const Icon(
        Icons.discount,
      ),
      "label": "Promo",
    },
    {
      "icon": SvgPicture.asset(
        "assets/icons/order.svg",
      ),
      "label": "Orders",
    },
    {
      "icon": const Icon(
        Icons.chat,
      ),
      "label": "Chat",
    },
  ];
}
