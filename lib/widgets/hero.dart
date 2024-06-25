import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HeroWidget extends StatelessWidget {
  HeroWidget({super.key});

  final ScreenUtil _screenUtil = ScreenUtil();

  @override
  Widget build(BuildContext context) {
    final responsiveData = ResponsiveBreakpoints.of(context);
    return Container(
      // /  color: Colors.pink,
      margin: EdgeInsets.symmetric(horizontal: .1.sw),
      height: ResponsiveBreakpoints.of(context).isMobile
          ? 0.5.sh
          : ResponsiveBreakpoints.of(context).isTablet
              ? 0.6.sh
              : 0.7.sh,
      child: ResponsiveRowColumn(
        layout: ResponsiveRowColumnType.ROW,
        children: [
          ResponsiveRowColumnItem(
            child: Expanded(
              child: Container(
                //  color: Colors.red,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AMIT ADITAYA',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            height: 1,
                            color: Colors.lightGreenAccent,
                            fontWeight: FontWeight.w700,
                            fontSize: .04.sh),
                      ),
                      SizedBox(
                        height: _screenUtil.setHeight(15),
                      ),
                      Text(
                        'Flutter Engineer',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            height: 1,
                            fontSize: .03.sh),
                      ),
                      SizedBox(
                        height: _screenUtil.setHeight(30),
                      ),
                      Text(
                        'Hello, I am a Senior Flutter Engineer based in Dhaka, Bangladesh',
                        style: TextStyle(
                            color: Colors.grey.shade300, fontSize: .02.sh),
                      ),
                      Wrap(
                        children: [
                          Text(
                            'Looking for a Flutter Specialist? ',
                            style: TextStyle(
                                color: Colors.grey.shade300, fontSize: .02.sh),
                          ),
                          Text(
                            'Let\'s Connect',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: .02.sh),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: _screenUtil.setHeight(30),
                      ),
                      Container(
                        height: _screenUtil.setHeight(100),
                        width: _screenUtil.setHeight(300),
                        decoration: BoxDecoration(
                            color: Colors.lightGreenAccent,
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text(
                            'Linkedin',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: .02.sh,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          responsiveData.isMobile
              ? const ResponsiveRowColumnItem(
                  child: SizedBox(),
                )
              : ResponsiveRowColumnItem(
                  child: Expanded(
                    child: Container(
                      //    color: Colors.yellow,
                      child: Center(
                        child: Stack(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: .48.sh,
                                width: .48.sh,
                                child: const Image(
                                    image: AssetImage(
                                        'assets/images/hero-splash.png')),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                margin: EdgeInsets.only(left: .025.sw),
                                height: .4.sh,
                                width: .4.sh,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  // /  border: Border.all(color: Colors.red, width: 3),
                                ),
                                child: const Center(
                                  child: ClipOval(
                                    child: Image(
                                      image: AssetImage('assets/images/dp.jpg'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
        ],
      ),
    );
  }
}
