import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice_app/bloc/time.dart';
import 'package:invoice_app/theme/color_theme.dart';
import 'package:lottie/lottie.dart';

import '../widgets/card_popular.dart';
import '../widgets/header.dart';
import '../widgets/hotbids_item.dart';
import '../widgets/sidebar.dart';
import '../widgets/topseller_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<TimeBloc>().setDurasi(Duration(seconds: 30));
    context.read<TimeBloc>().countDown();
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    if (shortestSide < 600) {
      return Scaffold(
        body: Center(
          child: Text("DON'T OPEN WITH SMARTPHONE ANDROID OR IPHONE"),
        ),
      );
    } else {
      return Scaffold(
          backgroundColor: background,
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.fromLTRB(32, 45, 32, 0),
              child: Row(
                children: [
                  SideBar(),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Column(
                        children: [
                          Header(),
                          Expanded(
                              child: Container(
                            margin: EdgeInsets.only(top: 44),
                            child: ListView(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Popular NFT's Live Auction",
                                          style: GoogleFonts.quicksand(
                                              fontSize: 32,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Show More",
                                              style: GoogleFonts.quicksand(
                                                  fontSize: 14,
                                                  color: Color(0xFF5EEAD4),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 16,
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios_sharp,
                                              size: 20,
                                              color: Color(0xFF5EEAD4),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 31,
                                    ),
                                    Container(
                                      child: SingleChildScrollView(
                                        //untuk merubah arah scroll menjadi ke kanan
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: [
                                            CardPopular(
                                                img: "assets/image/ntf1.png"),
                                            CardPopular(
                                                img: "assets/image/ntf2.png"),
                                            CardPopular(
                                                img: "assets/image/ntf1.png"),
                                            CardPopular(
                                                img: "assets/image/ntf2.png"),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 44,
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star_purple500_sharp,
                                                color: Colors.amber,
                                              ),
                                              Text(
                                                "Top Sellers",
                                                style: GoogleFonts.quicksand(
                                                    fontSize: 16,
                                                    color: Color(0xFF6EE7B7),
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                TopSellerItem(
                                                    imgSeller:
                                                        "assets/image/seller1.png"),
                                                TopSellerItem(
                                                    imgSeller:
                                                        "assets/image/seller2.png"),
                                                TopSellerItem(
                                                    imgSeller:
                                                        "assets/image/seller3.png"),
                                                TopSellerItem(
                                                    imgSeller:
                                                        "assets/image/seller4.png"),
                                                TopSellerItem(
                                                    imgSeller:
                                                        "assets/image/seller5.png"),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 16,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Color(0xFFF161A42)
                                                    .withOpacity(1),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all()),
                                            height: 8,
                                            width: double.infinity,
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    flex: 3,
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Colors.lightBlue,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                    )),
                                                Expanded(
                                                    flex: 4,
                                                    child: Container(
                                                      width: double.infinity,
                                                    )),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 40,
                                          ),
                                          Container(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    "🔥 Hot Bids",
                                                    style:
                                                        GoogleFonts.quicksand(
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xFF6EE7B7),
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                // BlocBuilder<TimeBloc, Duration>(
                                                //   bloc:
                                                //       context.read<TimeBloc>(),
                                                //   builder: (context, state) {
                                                //     return Text(
                                                //       "${state}",
                                                //     );
                                                //   },
                                                // ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    HotBidsItem(
                                                      imageitem:
                                                          "assets/image/Image.png",
                                                    ),
                                                    HotBidsItem(
                                                      imageitem:
                                                          "assets/image/Image-1.png",
                                                    ),
                                                    HotBidsItem(
                                                      imageitem:
                                                          "assets/image/Image-2.png",
                                                    ),
                                                    HotBidsItem(
                                                      imageitem:
                                                          "assets/image/Image-3.png",
                                                    ),
                                                    HotBidsItem(
                                                      imageitem:
                                                          "assets/image/Image-4.png",
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ));
    }
  }
}
