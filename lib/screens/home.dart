import 'package:amit_aditaya_portfolio/widgets/contact.dart';
import 'package:amit_aditaya_portfolio/widgets/hero.dart';
import 'package:amit_aditaya_portfolio/widgets/highlights.dart';
import 'package:amit_aditaya_portfolio/widgets/portfolio.dart';
import 'package:amit_aditaya_portfolio/widgets/strength.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScreenUtil _screenUtil;

  @override
  void initState() {
    _screenUtil = ScreenUtil();
    super.initState();
  }

  TextStyle headerStyle = TextStyle(
      color: Colors.deepOrange, fontSize: .03.sh, fontWeight: FontWeight.w700);

  @override
  Widget build(BuildContext context) {
    final responsiveData = ResponsiveBreakpoints.of(context);
    return Scaffold(
      //backgroundColor: const Color(AppColors.appBlack),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: .1.sw),
          child: Column(
            children: [
              SizedBox(
                height: 1.sh,
                //  /         color: Colors.pink,
                child: Column(
                  children: [
                    SizedBox(
                      height: .1.sh,
                    ),
                    HeroWidget(),
                    SizedBox(height: .1.sh),
                    const HighlightsWidget(),
                    const Spacer(),
                    Image.asset(
                      "assets/images/down-arrow.gif",
                      height: .1.sh,
                      width: .1.sh,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: .02.sh,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: const AssetImage("assets/images/muscle.gif"),
                    height: .05.sh,
                    width: .05.sh,
                  ),
                  SizedBox(
                    width: .005.sw,
                  ),
                  Text(
                    'Strengths',
                    style: headerStyle.copyWith(color: Colors.indigoAccent),
                  ),
                ],
              ),
              SizedBox(
                height: .02.sh,
              ),
              const StrengthWidget(),
              // if (responsiveData.isMobile) SizedBox(height: .03.sh),
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: Container(
              //     margin: EdgeInsets.symmetric(horizontal: .1.sw),
              //     padding: EdgeInsets.symmetric(horizontal: 0.01.sw),
              //     child: Text(
              //       '✨ Highlights ',
              //       style: headerStyle,
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: .06.sh,
              // ),
              //  /   SizedBox(height: .01.sh),
              SizedBox(
                height: .02.sh,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: const AssetImage("assets/images/work.gif"),
                    height: .05.sh,
                    width: .05.sh,
                  ),
                  SizedBox(
                    width: .005.sw,
                  ),
                  Text(
                    'Best Projects',
                    style: headerStyle.copyWith(color: Colors.red),
                  ),
                ],
              ),
              SizedBox(
                height: .02.sh,
              ),

              const Portfolio(),
              SizedBox(height: .06.sh),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: const AssetImage("assets/images/contact.gif"),
                    height: .05.sh,
                    width: .05.sh,
                  ),
                  SizedBox(
                    width: .005.sw,
                  ),
                  Text(
                    'Contact Me',
                    style: headerStyle.copyWith(color: Colors.amber),
                  ),
                ],
              ),
              SizedBox(height: .03.sh),
              const Contact(),
              SizedBox(height: .03.sh),
              Center(
                //   alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: .1.sw),
                  padding: EdgeInsets.symmetric(horizontal: 0.01.sw),
                  child: Text(
                    'Copyright (c) 2024 Amit Aditaya, All rights reserved',
                    textAlign: TextAlign.center,
                    style: headerStyle.copyWith(
                        color: Colors.grey, fontSize: .015.sh),
                  ),
                ),
              ),
              SizedBox(height: .05.sh),
            ],
          ),
        ),
      ),
    );
  }
}
