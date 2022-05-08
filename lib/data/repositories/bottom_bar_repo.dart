import 'package:flutter/material.dart';
import 'package:rjc_codelab_2/data/models/bottom_bar_model.dart';

class BottomBarRepo {
  static List<BottomBarModel> bottomBarList = [
    BottomBarModel(icon: Icons.explore_outlined, isSelected: true),
    BottomBarModel(icon: Icons.favorite_border, isSelected: false),
    BottomBarModel(icon: Icons.comment_outlined, isSelected: false),
    BottomBarModel(icon: Icons.account_circle_outlined, isSelected: false),
  ];
}
