import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek_ui/core.dart';
import 'package:gojek_ui/core/theme/theme_config.dart';
import 'package:gojek_ui/module/dashboard/home/widget/carousel_menu_vertical.dart';
import 'package:gojek_ui/module/dashboard/home/widget/transaction_menu.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../controller/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget build(context, HomeController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 0,
        toolbarHeight: 71,
        title: Container(
          padding: const EdgeInsets.all(5.0),
          margin: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(30.0),
            ),
            color: green1,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(controller.menuHeader.length, (index) {
              bool isSelected = controller.selectedIndex == index;
              return InkWell(
                onTap: () {
                  controller.updateIndex(index);
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.white : Colors.transparent,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(100.0),
                    ),
                  ),
                  child: Text(
                    controller.menuHeader[index],
                    style: semibold14.copyWith(
                        color: isSelected ? green1 : Colors.white),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 35,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: const Color(0xffFAFAFA),
                            foregroundColor: Colors.black,
                            side: const BorderSide(
                              color: Color(0xffE8E8E8),
                              width: 2,
                            ),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                            )),
                        onPressed: () {},
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/search.svg',
                              colorFilter: const ColorFilter.mode(
                                  Colors.black, BlendMode.srcIn),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: Text("Cari layanan , makanan & tujuan",
                                  style: regular14.copyWith(
                                    color: const Color(0xff999798),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/avatar.png'),
                  ),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: blue1,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Row(
                  children: [
                    CarouselMenuVertical(controller: controller),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TransactionMenu(
                            icon: 'assets/icons/pay.svg',
                            label: 'Bayar',
                            onTap: () {},
                          ),
                          TransactionMenu(
                            icon: 'assets/icons/topup.svg',
                            label: 'Top Up',
                            onTap: () {},
                          ),
                          TransactionMenu(
                            icon: 'assets/icons/explore.svg',
                            label: 'Eksplor',
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32.0,
              ),
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0,
                  crossAxisCount: 4,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6,
                ),
                itemCount: controller.menuDashboard.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.menuDashboard[index];
                  return Column(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: item.color,
                          ),
                          child: SvgPicture.asset(item.icon, width: 35),
                        ),
                      ),
                      const SizedBox(
                        height: 2.0,
                      ),
                      Text(item.title, style: regular12_5),
                    ],
                  );
                },
              ),
              const SizedBox(
                height: 10.0,
              ),
              Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(3.0),
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      SvgPicture.asset('assets/icons/dots.svg'),
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SvgPicture.asset('assets/icons/star.svg'),
                            const SizedBox(
                              width: 15.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "117 XP lagi ada Harta Karun",
                                  style: semibold14,
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                LinearPercentIndicator(
                                  width: 200,
                                  padding: EdgeInsets.zero,
                                  lineHeight: 8.0,
                                  percent: 0.6,
                                  animation: true,
                                  progressColor: Colors.green,
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 15.0,
                            ),
                            SvgPicture.asset(
                              'assets/icons/left.svg',
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text("Akses Cepat", style: bold18),
              const SizedBox(
                height: 10.0,
              ),
              Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                ),
                child: ListView.builder(
                  itemCount: controller.listAksesCepat.length,
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    var item = controller.listAksesCepat[index];
                    return ListTile(
                      onTap: () {},
                      leading: Container(
                        padding: const EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: item.color,
                        ),
                        child: SvgPicture.asset(item.icon, width: 20),
                      ),
                      title: Text(item.title),
                      trailing: const Icon(
                        Icons.keyboard_arrow_right,
                        size: 24.0,
                        color: Colors.black,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Image.asset(
                'assets/images/gopaylater.png',
                width: 100,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text("Lebih hemat pake GopayLater", style: bold16),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                  "Yuk, belanja di Tokopedia pake GoPay Later dan nimatin cashback nya",
                  style: regular14),
              const SizedBox(
                height: 20.0,
              ),
              ListView.builder(
                itemCount: controller.listNews.length,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.listNews[index];
                  return Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 160.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(item.image),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                8.0,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 24.0,
                          ),
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item.title, style: bold16),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(item.description, style: regular14),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<HomeView> createState() => HomeController();
}
