
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border:
              Border.all(color: Color(0xFFF161A42).withOpacity(1)),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFFF161A42),
              Color(0xFFF161A42).withOpacity(0),
            ],
          )),
      height: double.infinity,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(15, 25, 10, 30),
            height: 35,
            child: Image.asset(
              "assets/logo/logo.png",
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 0, 10, 30),
            height: 35,
            child: Image.asset(
              "assets/logo/home.png",
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 0, 10, 30),
            height: 20,
            child: Image.asset(
              "assets/logo/message.png",
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 0, 10, 30),
            height: 20,
            child: Image.asset(
              "assets/logo/vector.png",
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 0, 10, 30),
            height: 20,
            child: Image.asset(
              "assets/logo/activity.png",
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 0, 10, 30),
            height: 20,
            child: Image.asset(
              "assets/logo/time.png",
            ),
          ),
          Container(
            color: Color(0xFF2BC0E4).withOpacity(0.1),
            height: 2,
            width: 50,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 25, 10, 35),
            height: 20,
            child: Image.asset(
              "assets/logo/Wallet.png",
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 0, 10, 35),
            height: 20,
            child: Image.asset(
              "assets/logo/friend.png",
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 0, 10, 35),
            height: 20,
            child: Image.asset(
              "assets/logo/settings.png",
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.fromLTRB(15, 0, 10, 35),
            height: 20,
            child: Image.asset(
              "assets/logo/exit.png",
            ),
          ),
        ],
      ),
    );
  }
}
