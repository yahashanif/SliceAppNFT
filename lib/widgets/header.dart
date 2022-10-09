import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 1,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search by creator or collection",
                hintStyle: TextStyle(color: Colors.white.withOpacity(0.2)),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white.withOpacity(0.2),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 18, 21, 51).withOpacity(1),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Color(0xFFF161A42).withOpacity(1),
                    width: 1.0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 35,
          ),
          Flexible(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(0xFFF161A42).withOpacity(1)),
                        borderRadius: BorderRadius.circular(16),
                        color: Color.fromARGB(255, 18, 21, 51)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: 16,
                            child: Image.asset("assets/logo/eth.png")),
                        Text(
                          "3,25 ETH",
                          style: GoogleFonts.poppins( fontSize: 12,
                                      color: Colors.white
                                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(0xFFF161A42).withOpacity(1)),
                        borderRadius: BorderRadius.circular(16),
                        color: Color.fromARGB(255, 18, 21, 51)),
                    child: Container(
                        child: Icon(
                      Icons.notifications,
                      color: Color(0xFF373C70),
                    )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(0xFFF161A42).withOpacity(1)),
                        borderRadius: BorderRadius.circular(16),
                        color: Color.fromARGB(255, 18, 21, 51)),
                    child: Container(
                      child: Text(
                        "Create",
                        style: GoogleFonts.poppins( fontSize: 12,
                                      color: Colors.white
                                          ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.5),
                            spreadRadius: 4,
                            blurRadius: 5,
                            offset: Offset(1, 2), // changes position of shadow
                          ),
                        ],
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(16),
                        color: Color.fromARGB(255, 18, 21, 51)),
                    child: Text(
                      "Connect Wallet",
                      style:GoogleFonts.poppins( fontSize: 14,
                                      color: Colors.white
                                          ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 2,
                    height: 50,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 56,
                        width: 56,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage("assets/logo/profil.png"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Hanif Aulia Sabri",
                            style: GoogleFonts.poppins( fontSize: 12,
                                      color: Colors.white
                                          ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "hanifauliasabriii@gmail.com",
                            style: GoogleFonts.poppins( fontSize: 10,
                                      color: Colors.white
                                          .withOpacity(0.5)),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
