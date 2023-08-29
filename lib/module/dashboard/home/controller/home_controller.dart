import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gojek_ui/core.dart';
import 'package:gojek_ui/core/theme/theme_config.dart';
import 'package:gojek_ui/models/gojek_icon.dart';
import 'package:gojek_ui/models/news.dart';
import '../view/home_view.dart';

class HomeController extends State<HomeView> {
  static late HomeController instance;
  late HomeView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  List menuHeader = ["Beranda", "Promo", "Pesanan", "Chat"];

  int selectedIndex = 0;
  updateIndex(index) {
    selectedIndex = index;
    setState(() {});
  }

  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();

  List<Map<String, dynamic>> menuCarousel = [
    {
      "label": "",
      "saldo": 15000,
      "description": "Klik & cek riwayat",
      "onTap": "",
    },
    {
      "label": "Coins",
      "saldo": 120000,
      "description": "Klik & cek detail",
      "onTap": "",
    },
  ];

  List<GojekIcon> menuDashboard = [
    GojekIcon(
        icon: 'assets/icons/goride.svg', title: 'GoRide', color: Colors.green),
    GojekIcon(
        icon: 'assets/icons/gocar.svg', title: 'GoCar', color: Colors.green),
    GojekIcon(
        icon: 'assets/icons/gofood.svg', title: 'GoFood', color: Colors.red),
    GojekIcon(
        icon: 'assets/icons/gosend.svg', title: 'GoSend', color: Colors.green),
    GojekIcon(
        icon: 'assets/icons/gomart.svg', title: 'GoMart', color: Colors.red),
    GojekIcon(icon: 'assets/icons/gopulsa.svg', title: 'GoSend', color: blue3),
    GojekIcon(icon: 'assets/icons/goclub.svg', title: 'GoClub', color: purple),
    GojekIcon(
        icon: 'assets/icons/other.svg', title: 'Lainnya', color: Colors.black),
  ];

  List<GojekIcon> listAksesCepat = [
    GojekIcon(
        icon: 'assets/icons/goride.svg',
        title: 'Pintu masuk motor , MNC Land',
        color: Colors.green),
    GojekIcon(
        icon: 'assets/icons/gocar.svg',
        title: 'Pintu masuk motor , MNC Tower',
        color: Colors.green),
    GojekIcon(
        icon: 'assets/icons/gofood.svg',
        title: 'Pintu masuk motor , Depan Pasar',
        color: Colors.red),
  ];

  List<News> listNews = [
    News(
      image: 'assets/images/1.png',
      title: 'Makin Seru',
      description: 'Aktifkan dan Sambungkan GoPay & GoPayLater di Tokopedia',
    ),
    News(
      image: 'assets/images/2.png',
      title: 'Makin Seru',
      description: 'Sambungkan Akun ke Tokopedia, Banyakin Untung',
    ),
    News(
      image: 'assets/images/3.png',
      title: 'Makin Seru',
      description: 'Promo Belanja Online 10.10 Cashback hingga Rp 100.000',
    ),
  ];
}
