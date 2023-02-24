import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

import 'package:lottie/lottie.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120.0),
          child: Column(
            children: [
              ListTile(
                title: const Text(
                  'Hallo!',
                  textAlign: TextAlign.end,
                ),
                subtitle: const Text(
                  'Muhammad Rifqi',
                  textAlign: TextAlign.end,
                ),
                trailing: Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 50.0,
                  height: 50,
                  child: Lottie.network(
                      'https://gist.githubusercontent.com/olipiskandar/2095343e6b34255dcfb042166c4a3283/raw/d76e1121a2124640481edcf6e7712130304d6236/praujikom_kucing.json',
                      fit: BoxFit.cover),
                ),
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: TabBar(
                    labelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.label,
                    isScrollable: true,
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(text: "Headline"),
                      Tab(text: "Teknologi"),
                      Tab(text: "Sains"),
                    ]),
              )
            ],
          ),
        ),
        body: TabBarView(children: [
          Headline(),
          Tech(),
          Sains(),
        ]),
      ),
    ));
  }

  Center Sains() {
    return Center(child: Text('Berita Sains'));
  }

  Center Tech() {
    return Center(child: Text('Berita Teknologi'));
  }

  ListView Headline() {
    return ListView(
      shrinkWrap: true,
      children: [
        SizedBox(
          height: 15,
        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(5)),
          child: Container(
            padding: EdgeInsets.only(top: 5, right: 8, left: 8, bottom: 5),
            height: 110,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network('https://asset.kompas.com/crops/-mgPmvfGHi8QIKUVJaMWc_XlvxU=/0x0:0x0/750x500/data/photo/2022/10/24/6356749947786.jpg'),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Ganjar Pranowo digadang-gadang akan menjadi presiden Indonesia'),
                    SizedBox(
                      height: 2,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Author: Aiman Wicaksono'),
                        Text('Sumber: Kompas')
                      ],
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(5)),
          child: Container(
            padding: EdgeInsets.only(top: 5, right: 8, left: 8, bottom: 5),
            height: 110,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network('https://asset.kompas.com/crops/-mgPmvfGHi8QIKUVJaMWc_XlvxU=/0x0:0x0/750x500/data/photo/2022/10/24/6356749947786.jpg'),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Ganjar Pranowo digadang-gadang akan menjadi presiden Indonesia'),
                    SizedBox(
                      height: 2,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Author: Aiman Wicaksono'),
                        Text('Sumber: Kompas')
                      ],
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(5)),
          child: Container(
            padding: EdgeInsets.only(top: 5, right: 8, left: 8, bottom: 5),
            height: 110,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network('https://asset.kompas.com/crops/-mgPmvfGHi8QIKUVJaMWc_XlvxU=/0x0:0x0/750x500/data/photo/2022/10/24/6356749947786.jpg'),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Ganjar Pranowo digadang-gadang akan menjadi presiden Indonesia'),
                    SizedBox(
                      height: 2,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Author: Aiman Wicaksono'),
                        Text('Sumber: Kompas')
                      ],
                    )
                  ],
                ))
              ],
            ),
          ),
        )
      ],
    );
  }
}
