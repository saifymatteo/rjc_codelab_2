import 'package:flutter/material.dart';

import '../../constant/constant.dart';
import '../components/components.dart';

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