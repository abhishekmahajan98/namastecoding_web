import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
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
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 130,
                    bottom: 130,
                  ),
                  child: Container(
                    height: 300,
                    child: GestureDetector(
                      onTap: () => print("Learn Button Pressed"),
                      child: Stack(
                        children: [
                          FlareActor(
                            "assets/flares/blob.flr",
                            alignment: Alignment.center,
                            fit: BoxFit.contain,
                            animation: "Aura",
                          ),
                          Center(
                            child: Text(
                              "Learn",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "\"In learning you will teach. In teaching, you will learn\"",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                getWhiteDivider(),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Code. Create. Innovate",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 130),
                  child: Container(
                    height: 400,
                    width: 600,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 5,
                      ),
                    ),
                    child: YoutubePlayerIFrame(
                      controller: ytcontroller,
                      aspectRatio: 16 / 9,
                    ),
                  ),
                ),
                getWhiteDivider(),
                Center(
                  child: Text(
                    "This site is made and managed by Abhishek Mahajan",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
