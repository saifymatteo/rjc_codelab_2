import 'package:flutter/material.dart';
import 'package:rjc_codelab_2/constant/app_colors.dart';

import 'views/pages/landing_page.dart';

void main() {
  runApp(
    const MaterialApp(
      // home: LandingPage(),
      home: SplashPage(),
    ),
  );
}

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const LandingPage(),
        ),
      );
    });

    return Stack(
      children: [
        Container(
          color: AppColor.mainYellow,
        ),
        const Align(
          alignment: Alignment.center,
          child: Icon(
            Icons.airplanemode_on_rounded,
            color: Colors.black,
            size: 80,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 160,
            height: 160,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Colors.black.withOpacity(0.2),
              ),
              strokeWidth: 10,
            ),
          ),
        ),
      ],
    );
  }
}
