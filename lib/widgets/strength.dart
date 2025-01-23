import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_framework.dart';

class StrengthWidget extends StatelessWidget {
  const StrengthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final responsiveData = ResponsiveBreakpoints.of(context);
    return Container(
      height: responsiveData.isDesktop ? .3.sh : .4.sh,
      // color: Colors.red,
      padding: EdgeInsets.symmetric(
          horizontal: responsiveData.isMobile ? .0005.sh : .05.sw),
      child: responsiveData.isDesktop
          ? Row(
              children: [
                _strengthCard(
                    Colors.pink,
                    responsiveData,
                    Icons.leaderboard,
                    'Leadership',
                    'Experienced in managing small teams, successfully driving business needs, and consistently delivering projects on time.'),
                _strengthCard(
                    Colors.blue,
                    responsiveData,
                    Icons.design_services,
                    'Design Patterns',
                    'Created applications with MVP, MVVM patterns and CLEAN architecture.'),
                _strengthCard(
                    Colors.lightGreenAccent,
                    responsiveData,
                    Icons.gesture_rounded,
                    'Core Concepts',
                    'Understanding the core concepts fundamental concepts like application lifecycle, design principals and software methodologies.'),
                _strengthCard(
                    Colors.amber,
                    responsiveData,
                    Icons.lightbulb_outlined,
                    'Problem Solving',
                    'Experienced in resolving business issues that arise due to surges in demand, ensuring effective and timely solutions.'),
              ],
            )
          : Column(
              children: [
                Row(
                  children: [
                    _strengthCard(
                        Colors.pink,
                        responsiveData,
                        Icons.leaderboard,
                        'Leadership',
                        'Experienced in managing small teams, successfully driving business needs, and consistently delivering projects on time.'),
                    _strengthCard(
                        Colors.blue,
                        responsiveData,
                        Icons.design_services,
                        'Design Patterns',
                        'Created applications with MVP, MVVM patterns and CLEAN architecture.'),
                  ],
                ),
                Row(
                  children: [
                    _strengthCard(
                        Colors.lightGreenAccent,
                        responsiveData,
                        Icons.gesture_rounded,
                        'Core Concepts',
                        'Understanding of core and fundamental concepts like application lifecycle, design principals and software methodologies.'),
                    _strengthCard(
                        Colors.amber,
                        responsiveData,
                        Icons.lightbulb_outlined,
                        'Problem Solving',
                        'Experienced in resolving business issues that arise due to surges in demand, ensuring effective and timely solutions.'),
                  ],
                ),
              ],
            ),
    );
  }

  Widget _strengthCard(
    Color iconColor,
    ResponsiveBreakpointsData responsiveData,
    IconData icon,
    String title,
    String subtitle,
  ) {
    return Expanded(
        child: SizedBox(
      // /  color: Colors.red,
      width: 100,
      height: responsiveData.isDesktop ? .26.sh : .2.sh,
      // color: Colors.pink,
      child: Column(
        children: [
          Expanded(
            flex: 25,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 0.01.sw),
              width: double.infinity,
              //color: Colors.pink,
              child: Row(
                children: [
                  Container(
                    //   color: Colors.yellow,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        size: .035.sh,
                        icon,
                        color: iconColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(10),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: double.infinity,
                      width: double.infinity,
                      // color: Colors.teal,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: AutoSizeText(
                          title,
                          maxLines: 2,
                          minFontSize: responsiveData.isDesktop
                              ? .025.sh.roundToDouble()
                              : .02.sh.roundToDouble(),
                          maxFontSize: .03.sh.roundToDouble(),
                          stepGranularity: .1,
                          style: const TextStyle(
                            color: Colors.blueGrey,
                            //  fontSize: .03.sh,
                            fontWeight: FontWeight.w700,
                            height: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: .005.sh,
          ),
          Expanded(
            flex: 75,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 0.01.sw),
              width: double.infinity,
              //  color: Colors.grey,
              child: AutoSizeText(
                subtitle,
                minFontSize: .01.sh.roundToDouble(),
                maxFontSize: .18.sh.roundToDouble(),
                stepGranularity: .1,
                style: const TextStyle(
                    color: Colors.grey, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
