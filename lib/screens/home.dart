import 'package:amit_aditaya_portfolio/utils/theme/app_colors.dart';
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
      color: Colors.lightGreenAccent,
      fontSize: .03.sh,
      fontWeight: FontWeight.w700);

  @override
  Widget build(BuildContext context) {
    final responsiveData = ResponsiveBreakpoints.of(context);
    return Scaffold(
      backgroundColor: const Color(AppColors.appBlack),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: .1.sw),
                padding: EdgeInsets.symmetric(horizontal: 0.01.sw),
                child: Text(
                  '💪 Strengths',
                  style: headerStyle,
                ),
              ),
            ),
            SizedBox(height: .01.sh),
            const StrengthWidget(),
            if (responsiveData.isMobile) SizedBox(height: .03.sh),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: .1.sw),
                padding: EdgeInsets.symmetric(horizontal: 0.01.sw),
                child: Text(
                  '✨ Highlights ',
                  style: headerStyle,
                ),
              ),
            ),
            SizedBox(
              height: .06.sh,
            ),
            const HighlightsWidget(),
            SizedBox(height: .06.sh),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: .1.sw),
                padding: EdgeInsets.symmetric(horizontal: 0.01.sw),
                child: Text(
                  '👩🏻‍💻 Best Projects',
                  style: headerStyle,
                ),
              ),
            ),
            const Portfolio(),
            SizedBox(height: .06.sh),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: .1.sw),
                padding: EdgeInsets.symmetric(horizontal: 0.01.sw),
                child: Text(
                  '📞 Contact Me',
                  style: headerStyle,
                ),
              ),
            ),
            SizedBox(height: .03.sh),
            const Contact(),
            SizedBox(height: .03.sh),
            Align(
              //   alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: .1.sw),
                padding: EdgeInsets.symmetric(horizontal: 0.01.sw),
                child: Text(
                  'Copyright (c) 2024 Amit Aditaya, All rights reserved',
                  style: headerStyle.copyWith(
                      color: Colors.grey, fontSize: .015.sh),
                ),
              ),
            ),
            SizedBox(height: .05.sh),
          ],
        ),
      ),
    );
  }
}
