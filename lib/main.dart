import 'package:flutter/material.dart';
import 'constant/constant.dart';
import 'views/components/attraction_list.dart';
import 'views/components/bottom_bar_widget.dart';
import 'views/components/components.dart';

void main() {
  runApp(
    const MaterialApp(
      home: LandingPage(),
    ),
  );
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appTravelBar(),
      drawer: const AppTravelDrawer(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColor.primaryGray,
              AppColor.secondaryGray,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HeaderWidget(),
            AttractionList(),
            const BottomBarWidget(),
          ],
        ),
      ),
    );
  }
}