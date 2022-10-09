import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class HotBidsItem extends StatelessWidget {
final String imageitem;

  const HotBidsItem({super.key, required this.imageitem});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 228,
            width: 188,
            child: Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Image
                            .asset(
                                "assets/logo/coundown_bg.png")),
                    Expanded(
                        child:
                            SizedBox()),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets
                          .only(
                              top:
                                  8,
                              left:
                                  8,
                              right:
                                  8),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment
                                .spaceBetween,
                        children: [
                          Text(
                            "02:32:07",
                            style: GoogleFonts.poppins(
                                fontSize:
                                    16,
                                color:
                                    Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          Row(
                            children: [
                              Text(
                                "232",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.favorite,
                                color:
                                    Colors.purple,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 188,
                      width: 188,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(
                                  16),
                          image: DecorationImage(
                              image:
                                  AssetImage("${imageitem}"))),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 188,
            margin: EdgeInsets.fromLTRB(8, 15, 8, 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Stretch Of Time",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors
                          .white,
                      fontWeight:
                          FontWeight
                              .w500),
                ),
               
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "0.045 ETH",
                        style: GoogleFonts.poppins(
                            fontSize:
                                14,
                            color: Colors
                                    .greenAccent[
                                100],
                            fontWeight:
                                FontWeight
                                    .w500),
                      ),
                    ),
                  
                    Expanded(
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              height:
                                  24,
                              width: 24,
                              decoration:
                                  BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.blue.shade900
                                    ),
                                    image: DecorationImage(image: AssetImage("assets/image/Image-3.png")),
                                      shape: BoxShape.circle),
                            ),
                          ),
                          Positioned(
                            right: 15,
                            child:  Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              padding: EdgeInsets.all(5),
    
                              height:
                                  24,
                              width: 24,
                              decoration:
                                  BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.blue.shade900
                                    ),
                                    image: DecorationImage(image: AssetImage("assets/image/Image-2.png")),
                                      shape: BoxShape.circle),
                            ),
                          ),),
                          Positioned(
                            right: 30,
                            child:  Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              padding: EdgeInsets.all(5),
    
                              height:
                                  24,
                              width: 24,
                              decoration:
                                  BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.blue.shade900
                                    ),
                                    image: DecorationImage(image: AssetImage("assets/image/Image-4.png")),
                                      shape: BoxShape.circle),
                            ),
                          ),),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
