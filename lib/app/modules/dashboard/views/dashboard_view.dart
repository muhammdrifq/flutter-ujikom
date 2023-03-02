import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ujikom/app/data/agents_response.dart';
import 'package:ujikom/app/data/entertainment_response.dart';
import 'package:ujikom/app/data/sports_response.dart';
import 'package:ujikom/app/data/technology_response.dart';
import 'package:ujikom/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:ujikom/app/modules/home/views/home_view.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../data/headline_response.dart';
import '../controllers/dashboard_controller.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:icon/icon.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:developer';

import 'package:lottie/lottie.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DashboardController controller = Get.put(DashboardController());
    final ScrollController scrollController = ScrollController();
    final auth = GetStorage();
    return SafeArea(
        child: Scaffold(
            backgroundColor: HexColor("#0F1822"),
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: HexColor('#0F1822'),
              title: Text(
                'Valorant Agents',
                style: GoogleFonts.turretRoad(
                    color: HexColor("#ff4654"),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            body: agents(controller, scrollController)));
  }

  Obx agents(
      DashboardController controller, ScrollController scrollController) {
    return Obx(() => ListView.builder(
          itemCount: controller.agentsList.length,
          controller: scrollController,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: HexColor("#ff4654"),
                        spreadRadius: 0,
                        blurRadius: 12,
                        offset: Offset(0, 0)
                      ),
                      
                      

                    ]
                  ),
                  
                  padding: const EdgeInsets.only(
                      top: 5, left: 8, right: 8, bottom: 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      
                      controller.agentsList[index].photo!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            );
          },
        ));
  }

  // FutureBuilder<HeadlineResponse> headline(
  //     DashboardController controller, ScrollController scrollController) {
  //   return FutureBuilder<HeadlineResponse>(
  //       future: controller.getHeadline(),
  //       builder: (context, snapshot) {
  //         if (snapshot.connectionState == ConnectionState.waiting) {
  //           return Center(
  //             child: Lottie.network(
  //                 'https://gist.githubusercontent.com/olipiskandar/4f08ac098c81c32ebc02c55f5b11127b/raw/6e21dc500323da795e8b61b5558748b5c7885157/loading.json',
  //                 repeat: true,
  //                 width: MediaQuery.of(context).size.width / 1),
  //           );
  //         }
  //         if (!snapshot.hasData) {
  //           return const Center(child: Text("Tidak ada data"));
  //         }
  //         return ListView.builder(
  //           itemCount: snapshot.data!.data!.length,
  //           controller: scrollController,
  //           shrinkWrap: true,
  //           itemBuilder: (context, index) {
  //             return Container(
  //               padding:
  //                   const EdgeInsets.only(top: 5, left: 8, right: 8, bottom: 5),
  //               height: 110,
  //               child: Row(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   ClipRRect(
  //                     borderRadius: BorderRadius.circular(8.0),
  //                     child: Image.network(
  //                       snapshot.data!.data![index].urlToImage.toString(),
  //                       height: 130,
  //                       width: 130,
  //                       fit: BoxFit.cover,
  //                     ),
  //                   ),
  //                   const SizedBox(
  //                     width: 10,
  //                   ),
  //                   Expanded(
  //                       child: Column(
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: [
  //                       Text(
  //                         snapshot.data!.data![index].title.toString(),
  //                         overflow: TextOverflow.ellipsis,
  //                         maxLines: 2,
  //                       ),
  //                       const SizedBox(
  //                         height: 2,
  //                       ),
  //                       Column(
  //                         crossAxisAlignment: CrossAxisAlignment.start,
  //                         children: [
  //                           Text(
  //                               'Author : ${snapshot.data!.data![index].author}'),
  //                           Text('Sumber : ${snapshot.data!.data![index].name}')
  //                         ],
  //                       )
  //                     ],
  //                   ))
  //                 ],
  //               ),
  //             );
  //           },
  //         );
  //       });
  // }

  // FutureBuilder<TechnologyResponse> technology(
  //     DashboardController controller, ScrollController scrollController) {
  //   return FutureBuilder<TechnologyResponse>(
  //       future: controller.getTechnology(),
  //       builder: (context, snapshot) {
  //         if (snapshot.connectionState == ConnectionState.waiting) {
  //           return Center(
  //             child: Lottie.network(
  //                 'https://gist.githubusercontent.com/olipiskandar/4f08ac098c81c32ebc02c55f5b11127b/raw/6e21dc500323da795e8b61b5558748b5c7885157/loading.json',
  //                 repeat: true,
  //                 width: MediaQuery.of(context).size.width / 1),
  //           );
  //         }
  //         if (!snapshot.hasData) {
  //           return const Center(child: Text("Tidak ada data"));
  //         }
  //         return ListView.builder(
  //           itemCount: snapshot.data!.data!.length,
  //           controller: scrollController,
  //           shrinkWrap: true,
  //           itemBuilder: (context, index) {
  //             return Container(
  //               padding:
  //                   const EdgeInsets.only(top: 5, left: 8, right: 8, bottom: 5),
  //               height: 110,
  //               child: Row(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   ClipRRect(
  //                     borderRadius: BorderRadius.circular(8.0),
  //                     child: Image.network(
  //                       snapshot.data!.data![index].urlToImage.toString(),
  //                       height: 130,
  //                       width: 130,
  //                       fit: BoxFit.cover,
  //                     ),
  //                   ),
  //                   const SizedBox(
  //                     width: 10,
  //                   ),
  //                   Expanded(
  //                       child: Column(
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: [
  //                       Text(
  //                         snapshot.data!.data![index].title.toString(),
  //                         overflow: TextOverflow.ellipsis,
  //                         maxLines: 2,
  //                       ),
  //                       const SizedBox(
  //                         height: 2,
  //                       ),
  //                       Column(
  //                         crossAxisAlignment: CrossAxisAlignment.start,
  //                         children: [
  //                           Text(
  //                               'Author : ${snapshot.data!.data![index].author}'),
  //                           Text('Sumber : ${snapshot.data!.data![index].name}')
  //                         ],
  //                       )
  //                     ],
  //                   ))
  //                 ],
  //               ),
  //             );
  //           },
  //         );
  //       });
  // }

  // FutureBuilder<SportsResponse> sports(
  //     DashboardController controller, ScrollController scrollController) {
  //   return FutureBuilder<SportsResponse>(
  //       future: controller.getSports(),
  //       builder: (context, snapshot) {
  //         if (snapshot.connectionState == ConnectionState.waiting) {
  //           return Center(
  //             child: Lottie.network(
  //                 'https://gist.githubusercontent.com/olipiskandar/4f08ac098c81c32ebc02c55f5b11127b/raw/6e21dc500323da795e8b61b5558748b5c7885157/loading.json',
  //                 repeat: true,
  //                 width: MediaQuery.of(context).size.width / 1),
  //           );
  //         }
  //         if (!snapshot.hasData) {
  //           return const Center(child: Text("Tidak ada data"));
  //         }
  //         return ListView.builder(
  //           itemCount: snapshot.data!.data!.length,
  //           controller: scrollController,
  //           shrinkWrap: true,
  //           itemBuilder: (context, index) {
  //             return Container(
  //               padding:
  //                   const EdgeInsets.only(top: 5, left: 8, right: 8, bottom: 5),
  //               height: 110,
  //               child: Row(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   ClipRRect(
  //                     borderRadius: BorderRadius.circular(8.0),
  //                     child: Image.network(
  //                       snapshot.data!.data![index].urlToImage.toString(),
  //                       height: 130,
  //                       width: 130,
  //                       fit: BoxFit.cover,
  //                     ),
  //                   ),
  //                   const SizedBox(
  //                     width: 10,
  //                   ),
  //                   Expanded(
  //                       child: Column(
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: [
  //                       Text(
  //                         snapshot.data!.data![index].title.toString(),
  //                         overflow: TextOverflow.ellipsis,
  //                         maxLines: 2,
  //                       ),
  //                       const SizedBox(
  //                         height: 2,
  //                       ),
  //                       Column(
  //                         crossAxisAlignment: CrossAxisAlignment.start,
  //                         children: [
  //                           Text(
  //                               'Author : ${snapshot.data!.data![index].author}'),
  //                           Text('Sumber : ${snapshot.data!.data![index].name}')
  //                         ],
  //                       )
  //                     ],
  //                   ))
  //                 ],
  //               ),
  //             );
  //           },
  //         );
  //       });
  // }

  // FutureBuilder<EntertainmentResponse> entertainment(
  //     DashboardController controller, ScrollController scrollController) {
  //   return FutureBuilder<EntertainmentResponse>(
  //       future: controller.getEntertainment(),
  //       builder: (context, snapshot) {
  //         if (snapshot.connectionState == ConnectionState.waiting) {
  //           return Center(
  //             child: Lottie.network(
  //                 'https://gist.githubusercontent.com/olipiskandar/4f08ac098c81c32ebc02c55f5b11127b/raw/6e21dc500323da795e8b61b5558748b5c7885157/loading.json',
  //                 repeat: true,
  //                 width: MediaQuery.of(context).size.width / 1),
  //           );
  //         }
  //         if (!snapshot.hasData) {
  //           return const Center(child: Text("Tidak ada data"));
  //         }
  //         return ListView.builder(
  //           itemCount: snapshot.data!.data!.length,
  //           controller: scrollController,
  //           shrinkWrap: true,
  //           itemBuilder: (context, index) {
  //             return Container(
  //               padding:
  //                   const EdgeInsets.only(top: 5, left: 8, right: 8, bottom: 5),
  //               height: 110,
  //               child: Row(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   ClipRRect(
  //                     borderRadius: BorderRadius.circular(8.0),
  //                     child: Image.network(
  //                       snapshot.data!.data![index].urlToImage.toString(),
  //                       height: 130,
  //                       width: 130,
  //                       fit: BoxFit.cover,
  //                     ),
  //                   ),
  //                   const SizedBox(
  //                     width: 10,
  //                   ),
  //                   Expanded(
  //                       child: Column(
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: [
  //                       Text(
  //                         snapshot.data!.data![index].title.toString(),
  //                         overflow: TextOverflow.ellipsis,
  //                         maxLines: 2,
  //                       ),
  //                       const SizedBox(
  //                         height: 2,
  //                       ),
  //                       Column(
  //                         crossAxisAlignment: CrossAxisAlignment.start,
  //                         children: [
  //                           Text(
  //                               'Author : ${snapshot.data!.data![index].author}'),
  //                           Text('Sumber : ${snapshot.data!.data![index].name}')
  //                         ],
  //                       )
  //                     ],
  //                   ))
  //                 ],
  //               ),
  //             );
  //           },
  //         );
  //       });
  // }
}

class ProfileWidget extends StatelessWidget {
  PanelController _panelController = PanelController();
  final auth = GetStorage();

  void togglePanel() => _panelController.isPanelOpen
      ? _panelController.close()
      : _panelController.open();
  @override
  Widget build(BuildContext context) {
    ThemeData.light();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(),
      child: Stack(
        children: <Widget>[
          SlidingUpPanel(
            parallaxEnabled: true,
            controller: _panelController,
            minHeight: size.height * 0.03,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            body: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://marketplace.canva.com/EAFHm4JWsu8/1/0/1600w/canva-pink-landscape-desktop-wallpaper-HGxdJA_xIx0.jpg',
                      ),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 240, left: 7, bottom: 3),
                    child: Text(
                      auth.read('full_name'),
                      style: GoogleFonts.quicksand(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 7),
                    child: Text(
                      'Junior Programmer',
                      style: GoogleFonts.quicksand(fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
            panelBuilder: (controller) {
              return SingleChildScrollView(
                padding: EdgeInsets.only(left: 10, right: 10),
                controller: controller,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: togglePanel,
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 6),
                          height: 7,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade400),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red.shade300),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Lottie.network(
                                  'https://assets8.lottiefiles.com/packages/lf20_8yuT3F.json'),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              auth.read('full_name'),
                              style: GoogleFonts.quicksand(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              '@muhammdrifq',
                              style: GoogleFonts.quicksand(
                                  fontSize: 14, color: HexColor('#d4d2d2')),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 55,
                                    height: 55,
                                    child: Lottie.network(
                                        'https://assets10.lottiefiles.com/packages/lf20_xh8sdzyb.json'),
                                  ),
                                  Container(
                                    width: 55,
                                    height: 55,
                                    child: Lottie.network(
                                        'https://assets10.lottiefiles.com/packages/lf20_yui4jq7v.json'),
                                  ),
                                  Container(
                                    width: 55,
                                    height: 55,
                                    child: Lottie.network(
                                        'https://assets10.lottiefiles.com/packages/lf20_cwqf5i6h.json'),
                                  ),
                                ],
                              )),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              'Deskripsi',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.quicksand(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              'Hello, My name is Muhammad Rifqi Hidayatulloh, Im a junior programmer. For now, i still study in Assalaam Vocational High School. I will be 18 years old this year. My goal is to be a full-time Programmer and give a massive impact to my future company. Thank you and see yoy around.',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.quicksand(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          )
        ],
      ),
    ));
  }
}
