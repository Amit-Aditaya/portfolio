import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HeroWidget extends StatelessWidget {
  HeroWidget({super.key});

  final ScreenUtil _screenUtil = ScreenUtil();

  @override
  Widget build(BuildContext context) {
    final responsiveData = ResponsiveBreakpoints.of(context);
    return SizedBox(
      // /  height: .75.sh,
      child: Column(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            height: .2.sh,
            width: .2.sh,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.yellow,
            ),
            child: const Center(
              child: Image(
                image: AssetImage("assets/images/dp_nobg.png"),
              ),
            ),
          ),
          SizedBox(
            height: .05.sh,
          ),
          Text(
            'Amit Aditaya',
            textAlign: TextAlign.center,
            style: TextStyle(
                //   color: const Color(0xffeb5a3c),
                color: Colors.deepOrange,
                fontSize: .04.sh,
                fontWeight: FontWeight.w700),
          ),
          Text(
            'Mobile Application Developer',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.blueGrey,
                fontSize: .025.sh,
                fontWeight: FontWeight.w700),
          ),
          // Text(
          //   "Hello, I am a Mobile Application Developer with a passion for crafting exceptional apps in Flutter and native Android,",
          //   style: TextStyle(
          //       color: Colors.grey,
          //       fontSize: .018.sh,
          //       fontWeight: FontWeight.w500),
          // ),
          Text.rich(
            TextSpan(
              text:
                  "Hello, I am a Mobile Application Developer with a passion for crafting exceptional apps in ",
              style: TextStyle(
                color: Colors.grey,
                fontSize: .018.sh,
                fontWeight: FontWeight.w500,
              ),
              children: [
                TextSpan(
                  text: "Flutter",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: .018.sh,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: " and ",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: .018.sh,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: "Native Android",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: .018.sh,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: ".",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: .018.sh,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            "Looking for a mobile specialist to bring your ideas to life?",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey,
                fontSize: .018.sh,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: .01.sh,
          ),
          Text(
            "LET'S CONNECT",
            style: TextStyle(
                color: Colors.deepOrange,
                fontSize: .018.sh,
                fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: .025.sh,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/linkedin.svg",
                height: .03.sh,
                width: .03.sh,
              ),
              SizedBox(
                width: .02.sw,
              ),
              SvgPicture.asset(
                "assets/images/whatsapp.svg",
                height: .03.sh,
                width: .03.sh,
              ),
              SizedBox(
                width: .02.sw,
              ),
              SvgPicture.asset(
                "assets/images/facebook.svg",
                height: .03.sh,
                width: .03.sh,
              ),
            ],
          )
        ],
      ),
    );
  }
}
