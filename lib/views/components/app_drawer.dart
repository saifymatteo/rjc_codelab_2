import 'package:flutter/material.dart';

import '../../constant/constant.dart';

class AppTravelDrawer extends StatelessWidget {
  const AppTravelDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: AppColor.mainYellow,
        alignment: Alignment.bottomLeft,
        padding: const EdgeInsets.all(20),
        child: const Icon(
          Icons.airplanemode_on_rounded,
          size: 80,
          color: Colors.black,
        ),
      ),
    );
  }
}