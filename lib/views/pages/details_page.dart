import 'package:flutter/material.dart';

import '../../constant/constant.dart';
import '../../data/models/attraction_model.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key, this.selectedModel}) : super(key: key);

  final AttractionModel? selectedModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(selectedModel!.imgPath!),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.8),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  selectedModel!.name!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  selectedModel!.location!,
                  style: const TextStyle(
                    color: AppColor.mainYellow,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  selectedModel!.description!,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'View Comments',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Material(
                        color: AppColor.mainYellow,
                        child: InkWell(
                          onTap: () {},
                          splashColor: Colors.black.withOpacity(0.1),
                          highlightColor: Colors.black.withOpacity(0.2),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: const Text(
                              'Use Itinerary',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            iconTheme: const IconThemeData(color: AppColor.mainYellow),
            title: const Center(
              child: Icon(
                Icons.airplanemode_on_rounded,
              ),
            ),
            actions: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
