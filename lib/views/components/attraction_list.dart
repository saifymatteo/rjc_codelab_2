import 'package:flutter/material.dart';

import '../../constant/constant.dart';
import '../../data/models/attraction_model.dart';
import '../../data/repositories/attraction_repo.dart';
import 'attraction_card.dart';

class AttractionList extends StatelessWidget {
  AttractionList({Key? key}) : super(key: key);

  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RawScrollbar(
        thumbColor: AppColor.mainYellow,
        radius: const Radius.circular(20),
        thickness: 5,
        mainAxisMargin: 15,
        controller: scrollController,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: AttractionRepo.attractions.length,
            padding: const EdgeInsets.only(left: 10),
            controller: scrollController,
            itemBuilder: (_, index) {
              AttractionModel currentItem = AttractionRepo.attractions[index];

              return AttractionCard(attractionModel: currentItem);
            },
          ),
        ),
      ),
    );
  }
}
