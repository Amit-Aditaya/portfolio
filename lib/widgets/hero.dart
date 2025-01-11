import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class HeroWidget extends StatelessWidget {
  HeroWidget({super.key});

  final ScreenUtil _screenUtil = ScreenUtil();

  @override
  Widget build(BuildContext context) {
    final responsiveData = ResponsiveBreakpoints.of(context);
    return Container(
      //color: Colors.pink,
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
                        'Mobile Application Developer',
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
                        'Hello, I am a Mobile Application Developer with a passion for crafting exceptional apps in Flutter and native Android.',
                        style: TextStyle(
                            color: Colors.grey.shade300, fontSize: .02.sh),
                      ),
                      Wrap(
                        children: [
                          Text(
                            'If you’re looking for a specialist to bring your vision to life, ',
                            style: TextStyle(
                                color: Colors.grey.shade300, fontSize: .02.sh),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'Let\'s Connect',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: .02.sh),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: _screenUtil.setHeight(30),
                      ),
                      InkWell(
                        onTap: () async {
                          final Uri url = Uri.parse(
                              'https://www.linkedin.com/in/amit-aditaya/');
                          if (!await launchUrl(url)) {
                            throw Exception('Could not launch $url');
                          }
                        },
                        child: Container(
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          if (responsiveData.isDesktop)
            const ResponsiveRowColumnItem(child: Spacer()),
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
                                      image: AssetImage(
                                          'assets/images/dp_nobg.png'),
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
