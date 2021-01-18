import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:namastecodingweb/components/white_divider.dart';
import 'package:namastecodingweb/components/yt_player_controller.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
            textAlign: TextAlign.center,
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
    );
  }
}
