import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HighlightsWidget extends StatefulWidget {
  const HighlightsWidget({super.key});

  @override
  State<HighlightsWidget> createState() => _HighlightsWidgetState();
}

class _HighlightsWidgetState extends State<HighlightsWidget> {
  final ScreenUtil _screenUtil = ScreenUtil();

  @override
  Widget build(BuildContext context) {
    final responsiveData = ResponsiveBreakpoints.of(context);

    final items = [
      _card('7', 'Clients', Colors.deepOrange),
      _card('12+', 'Projects', Colors.deepOrange),
      _card('4+', 'Years Of\nExperience', Colors.deepOrange)
    ];

    return Container(
      margin: responsiveData.isDesktop
          ? EdgeInsets.symmetric(horizontal: .05.sw)
          : null,
      // margin: EdgeInsets.symmetric(
      //     horizontal: responsiveData.isDesktop ? .1.sw : .001.sw),
      height: _screenUtil.setHeight(200),
      width: double.infinity,
      child: CarouselSlider(
        items: items,
        options: CarouselOptions(
            autoPlay: true,
            viewportFraction: responsiveData.isTablet
                ? .7
                : responsiveData.isMobile
                    ? 1
                    : .35,
            disableCenter: true),
      ),
    );
  }

  Widget _card(String number, String title, Color numberColor) {
    final TextStyle numberStyle =
        TextStyle(fontSize: .05.sh, color: numberColor);

    final TextStyle titleStyle = TextStyle(
      color: Colors.blueGrey,
      fontSize: .02.sh,
      fontWeight: FontWeight.w500,
      height: 1,
    );
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      margin: EdgeInsets.symmetric(horizontal: .03.sw),
      // width: .2.sw,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey.shade100,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              number,
              style: numberStyle,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: titleStyle,
            )
          ],
        ),
      ),
    );
  }
}
