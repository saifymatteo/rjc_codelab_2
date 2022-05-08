import 'package:flutter/material.dart';

import '../../constant/constant.dart';

AppBar appTravelBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColor.primaryGray,
      iconTheme: const IconThemeData(color: AppColor.mainYellow),
      title: const Center(
        child: Icon(Icons.airplanemode_on_rounded),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_on_outlined,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }