import 'package:youtube_player_iframe/youtube_player_iframe.dart';

YoutubePlayerController ytcontroller = YoutubePlayerController(
  initialVideoId: 'Mvk8Ruv8SSU',
  params: YoutubePlayerParams(
    // Defining custom playlist
    startAt: Duration(seconds: 0),
    showControls: true,
    showFullscreenButton: true,
  ),
);
