import 'package:flutter/material.dart';

import '../../constant/constant.dart';
import '../../data/models/bottom_bar_model.dart';
import '../../data/repositories/bottom_bar_repo.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(BottomBarRepo.bottomBarList.length, (index) {
          BottomBarModel barItem = BottomBarRepo.bottomBarList[index];

          return IconButton(
            onPressed: () {
              setState(() {
                for (BottomBarModel element in BottomBarRepo.bottomBarList) {
                  element.isSelected = element == barItem;
                }
              });
            },
            icon: Icon(
              barItem.icon,
              color: barItem.isSelected! ? AppColor.mainYellow : Colors.grey,
            ),
          );
        }),
      ),
    );
  }
}
