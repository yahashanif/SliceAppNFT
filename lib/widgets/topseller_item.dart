
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopSellerItem extends StatelessWidget {
 final String imgSeller;

  const TopSellerItem({super.key, required this.imgSeller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 161,
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius
                        .circular(10),
                image: DecorationImage(
                    image: AssetImage(
                        "${imgSeller}"),
                    fit: BoxFit
                        .cover)),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment:
                CrossAxisAlignment
                    .start,
            mainAxisAlignment:
                MainAxisAlignment
                    .center,
            children: [
              Row(
                children: [
                  Text(
                    "@dicar",
                    style: GoogleFonts.quicksand(
                        fontSize: 16,
                        color: Colors
                            .white,
                        fontWeight:
                            FontWeight
                                .w500),
                  ),
                  Icon(
                    Icons.verified,
                    color: Colors
                        .pink[800],
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "\$232,102",
                style: GoogleFonts
                    .quicksand(
                        fontSize: 14,
                        color: Color(
                            0xFF6EE7B7),
                        fontWeight:
                            FontWeight
                                .w500),
              ),
            ],
          )
        ],
      ),
    );
  }
}
