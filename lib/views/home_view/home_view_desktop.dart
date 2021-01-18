import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:namastecodingweb/components/homepage_content.dart';
import 'package:namastecodingweb/components/yt_player_controller.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:namastecodingweb/components/white_divider.dart';

class HomeViewDesktop extends StatefulWidget {
  @override
  _HomeViewDesktopState createState() => _HomeViewDesktopState();
}

class _HomeViewDesktopState extends State<HomeViewDesktop> {
  Widget _navBarItem(String txt, Function onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Text(
          txt,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 5),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
              ),
              child: Container(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset(
                          "assets/images/name.jpeg",
                          scale: 1.2,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            "By Abhishek Mahajan",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        _navBarItem("Home", () => print("Home Pressed")),
                        _navBarItem("About", () => print("About Pressed")),
                        _navBarItem("Learn", () => print("Learn Pressed")),
                      ],
                    )
                  ],
                ),
              ),
            ),
            getWhiteDivider(),
            HomePageContent(),
          ],
        ),
      ),
    );
  }
}
