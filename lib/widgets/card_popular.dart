
import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../theme/color_theme.dart';

class CardPopular extends StatelessWidget {
 final String img;

  const CardPopular({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 35),
      height: 300,
      width: 600,
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage(
                  "${img}"),
              fit: BoxFit.cover),
          borderRadius:
              BorderRadius.circular(24)),
      child: Column(
        children: [
          Expanded(child: SizedBox()),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                      left: 24, bottom: 14),
                  child: Stack(
                    children: [
                      Blur(
                        blur: 6,
                        borderRadius:
                            BorderRadius
                                .circular(
                                    24),
                        colorOpacity: 0.2,
                        blurColor:
                            Colors.black,
                        child: Container(),
                      ),
                      Container(
                          padding: EdgeInsets
                              .symmetric(
                                  horizontal:
                                      15,
                                  vertical:
                                      14),
                          child: Column(
                            mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment:
                                    CrossAxisAlignment
                                        .end,
                                mainAxisAlignment:
                                    MainAxisAlignment
                                        .spaceBetween,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                    children: [
                                      LottieBuilder
                                          .asset(
                                        "assets/lottie/jam_pasir.json",
                                        width:
                                            50,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "18h : 17m : 29s",
                                            style: GoogleFonts.quicksand(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            "Time Remaining",
                                            style: GoogleFonts.quicksand(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "17.53 ETH",
                                        style: GoogleFonts.quicksand(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        "Highest Bid",
                                        style: GoogleFonts.quicksand(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Material(
                                color: background
                                    .withOpacity(
                                        0.5),
                                borderRadius:
                                    BorderRadius.circular(
                                        10),
                                child:
                                    InkWell(
                                  onTap:
                                      () {},
                                  child:
                                      Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(width: 3, color: Colors.blueAccent),
                                        borderRadius: BorderRadius.circular(10)),
                                    width: double
                                        .infinity,
                                    height:
                                        36,
                                    child:
                                        Center(
                                      child:
                                          Text(
                                        "Place A Bid",
                                        style: GoogleFonts.quicksand(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              Expanded(child: SizedBox())
            ],
          ))
        ],
      ),
    );
  }
}
