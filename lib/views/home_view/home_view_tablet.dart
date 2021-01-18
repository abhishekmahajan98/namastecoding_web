import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:namastecodingweb/components/white_divider.dart';
import 'package:namastecodingweb/components/yt_player_controller.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class HomeViewTablet extends StatefulWidget {
  @override
  _HomeViewTabletState createState() => _HomeViewTabletState();
}

class _HomeViewTabletState extends State<HomeViewTablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.info,
                color: Colors.black,
              ),
              title: Text(
                'About',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.book,
                color: Colors.black,
              ),
              title: Text(
                'Learn',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 55,
              child: Image.asset(
                "assets/images/name.jpeg",
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                "By Abhishek Mahajan",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
        child: ListView(
          children: [
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
                    textAlign: TextAlign.center,
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
            ),
          ],
        ),
      ),
    );
  }
}
