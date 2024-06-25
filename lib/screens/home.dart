import 'package:amit_aditaya_portfolio/widgets/hero.dart';
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

  @override
  Widget build(BuildContext context) {
    final responsiveData = ResponsiveBreakpoints.of(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(),
            //  const HighlightsWidget(),
            const StrengthWidget(),
            SizedBox(
              height: 1.sh,
            )
          ],
        ),
      ),
    );
  }
}
