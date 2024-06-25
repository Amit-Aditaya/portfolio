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

    final TextStyle numberStyle = TextStyle(
        //  fontSize: ResponsiveBreakpoints.of(context).isMobile ? 60.sp : 46.sp,
        fontSize: ResponsiveBreakpoints.of(context).isMobile ? .04.sh : .06.sh,
        color: Colors.lightGreenAccent);

    final TextStyle titleStyle = TextStyle(
      color: Colors.grey.shade300,
      //  fontSize: ResponsiveBreakpoints.of(context).isMobile ? 26.sp : 16.sp,
      fontSize: ResponsiveBreakpoints.of(context).isMobile ? .015.sh : .02.sh,
      fontWeight: FontWeight.w500,

      height: 1,
    );
    return Container(
      margin: EdgeInsets.symmetric(horizontal: .1.sw),
      //  padding: EdgeInsets.symmetric(horizontal: _screenUtil.setWidth(20)),
      height: _screenUtil.setHeight(300),
      decoration: const BoxDecoration(
          //  color: Colors.green,
          //   borderRadius: BorderRadius.circular(50),
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            //   color: Colors.amber,
            width: _screenUtil.setWidth(200),
            child: Column(
              children: [
                Text(
                  'Clients',
                  style: titleStyle,
                ),
                Text('5', style: numberStyle),
              ],
            ),
          ),
          SizedBox(
            //   color: Colors.amber,
            width: _screenUtil.setWidth(200),
            child: Column(
              children: [
                Text('Projects', style: titleStyle),
                Text(
                  '10+',
                  style: numberStyle,
                  maxLines: 1,
                ),
              ],
            ),
          ),
          SizedBox(
            //   color: Colors.amber,
            width: _screenUtil.setWidth(200),
            child: Column(
              children: [
                Text(
                  'Experience',
                  style: titleStyle,
                  maxLines: 1,
                ),
                Text('3+', style: numberStyle),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
