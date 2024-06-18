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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3e3e42),
      body: SizedBox(
        height: ResponsiveBreakpoints.of(context).isMobile
            ? 0.6.sh
            : ResponsiveBreakpoints.of(context).isTablet
                ? 0.7.sh
                : 0.9.sh,
        child: ResponsiveRowColumn(
          layout: ResponsiveRowColumnType.ROW,
          children: [
            ResponsiveRowColumnItem(
              child: Expanded(
                child: Container(
                  //   color: Colors.red,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Amit Aditaya',
                          style: TextStyle(
                              color: Colors.lightGreenAccent, fontSize: 36.sp),
                        ),
                        Text(
                          'Flutter Engineer',
                          style: TextStyle(color: Colors.grey.shade300),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ResponsiveRowColumnItem(
              child: Expanded(
                child: Container(
                  //    color: Colors.yellow,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: .6.sh,
                          width: .6.sh,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            // /  border: Border.all(color: Colors.red, width: 3),
                          ),
                          child: const Center(
                            child: ClipOval(
                              child: Image(
                                image: AssetImage('images/dp.jpg'),
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
      ),
    );
  }
}
