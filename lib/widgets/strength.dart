import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StrengthWidget extends StatelessWidget {
  const StrengthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: .3.sh,
      //  color: Colors.red,
      padding: EdgeInsets.symmetric(horizontal: .1.sw),
      child: Row(
        children: [
          _strengthCard(Icons.leaderboard, 'Leadership',
              'Experienced in managing small teams, successfully driving business needs, and consistently delivering projects on time.'),
          _strengthCard(Icons.zoom_in, 'Design Patterns',
              'blah blah asdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdas'),
          _strengthCard(Icons.u_turn_left, 'Core Concepts',
              'blah blah asdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdas'),
          _strengthCard(Icons.face, 'Problem Solving',
              'blah blah asdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdas'),
        ],
      ),
    );
  }

  Widget _strengthCard(
    IconData icon,
    String title,
    String subtitle,
  ) {
    return Expanded(
        child: Container(
      // color: Colors.pink,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 0.01.sw),
              width: double.infinity,
              // color: Colors.pink,
              child: Row(
                children: [
                  Container(
                    //  color: Colors.yellow,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        size: .035.sh,
                        icon,
                        color: Colors.lightGreenAccent,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(10),
                  ),
                  Expanded(
                    child: Container(
                      //    color: Colors.green,
                      child: Text(
                        title,
                        style: TextStyle(
                            color: Colors.white, fontSize: .03.sh, height: 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 0.01.sw),
              width: double.infinity,
              //  color: Colors.grey,
              child: Text(
                subtitle,
                style: const TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
