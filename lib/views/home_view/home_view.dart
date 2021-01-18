import 'package:flutter/material.dart';
import 'package:namastecodingweb/views/home_view/home_view_desktop.dart';
import 'package:namastecodingweb/views/home_view/home_view_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeViewTablet(),
      //tablet: HomeViewTablet(),
      desktop: HomeViewDesktop(),
    );
  }
}
