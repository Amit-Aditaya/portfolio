import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';
import 'package:url_launcher/url_launcher.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  bool _isPersonal = false;
  bool _isCommercial = true;

  @override
  Widget build(BuildContext context) {
    final responsiveData = ResponsiveBreakpoints.of(context);
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: responsiveData.isMobile ? .001 : .1.sw),
      child: Column(
        children: [
          SizedBox(
            height: .025.sh,
          ),
          LiteRollingSwitch(
            width: 145,
            onTap: (v) {},
            onDoubleTap: () {},
            onSwipe: () {},
            value: true,
            textOn: 'Commercial',
            textOff: 'Personal',
            colorOn: Colors.greenAccent,
            colorOff: Colors.black,
            iconOn: Icons.business_outlined,
            iconOff: Icons.favorite,
            textOnColor: Colors.white,
            textSize: 16.0,
            onChanged: (bool state) {
              setState(() {
                _isCommercial = !_isCommercial;
                _isPersonal = !_isPersonal;
              });
            },
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Expanded(
          //       child: GestureDetector(
          //         onTap: () {
          //           _isCommercial = true;
          //           _isPersonal = false;
          //           setState(() {});
          //         },
          //         child: Container(
          //           height: .06.sh,
          //           decoration: BoxDecoration(
          //               border: _isPersonal
          //                   ? Border.all(
          //                       width: 2, color: Colors.lightGreenAccent)
          //                   : null,
          //               borderRadius: BorderRadius.circular(50),
          //               //color: Colors.lightGreenAccent,
          //               gradient: _isCommercial == true
          //                   ? const LinearGradient(colors: [
          //                       Color(0xff56ab2f),
          //                       Color(0xffa8e063),
          //                     ])
          //                   : null),
          //           child: Center(
          //             child: Text(
          //               "Commercial",
          //               style: TextStyle(
          //                   color: _isCommercial
          //                       ? Colors.black
          //                       : Colors.lightGreenAccent,
          //                   fontSize: .02.sh,
          //                   fontWeight: FontWeight.w900),
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //     SizedBox(
          //       width: .02.sh,
          //     ),
          //     Expanded(
          //       child: GestureDetector(
          //         onTap: () {
          //           _isPersonal = true;
          //           _isCommercial = false;
          //           setState(() {});
          //         },
          //         child: Container(
          //           height: .06.sh,
          //           decoration: BoxDecoration(
          //               border: _isCommercial
          //                   ? Border.all(
          //                       width: 2, color: Colors.lightGreenAccent)
          //                   : null,
          //               borderRadius: BorderRadius.circular(50),
          //               //color: Colors.lightGreenAccent,
          //               gradient: _isPersonal == true
          //                   ? const LinearGradient(colors: [
          //                       Color(0xff56ab2f),
          //                       Color(0xffa8e063),
          //                     ])
          //                   : null),
          //           child: Center(
          //             child: Text(
          //               "Personal",
          //               style: TextStyle(
          //                   color: _isPersonal
          //                       ? Colors.black
          //                       : Colors.lightGreenAccent,
          //                   fontSize: .02.sh,
          //                   fontWeight: FontWeight.w900),
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          SizedBox(
            height: .025.sh,
          ),
          if (_isPersonal) ...[
            _portfolioCard(
              titleColor: Colors.green,
              context: context,
              title: "Memory Game",
              description:
                  "A simple and fun memory game developed in Kotlin for Android devices. The goal is to match all pairs of cards with the least number of moves. Some of the features include :-\n\n • Responsive Gameplay: Smooth animations and intuitive controls. \n • Randomized Cards: A fresh challenge with every restart.\n • Progress Tracking: Displays the number of moves and matched pairs.\n • Restart Option: Quickly reset the game to try again.",
              image: const Image(image: AssetImage('assets/images/memory.png')),
              buttonText: "Download Link",
              urlLink: "",
            ),
            _portfolioCard(
              titleColor: Colors.green,
              imageOnRight: true,
              context: context,
              title: "Crypto Currency Application",
              description:
                  "This is a simple cryptocurrency app built using Kotlin and Jetpack Compose with Clean Architecture principles. The app fetches data from the Coin Paprika API and displays the following features:\n\n • Displays a list of cryptocurrencies with their names, symbols, and statuses.\n • Detailed information about a selected cryptocurrency, including tags and team members.\n • Displays the latest Twitter feeds related to the selected cryptocurrency",
              image: const Image(image: AssetImage('assets/images/crypto.png')),
              buttonText: "Download Link",
              urlLink: "",
            )
          ] else ...[
            _portfolioCard(
                titleColor: Colors.pink,
                context: context,
                logoUrl: 'assets/images/eatos_logo_2.png',
                title: 'EatOS - Kiosk',
                buttonText: 'Android Link',
                urlLink:
                    'https://play.google.com/store/apps/details?id=com.poslabs.kiosk&hl=en',
                description:
                    'The eatOS Kiosk is a self-service solution that streamlines restaurant operations by enabling customers to place orders directly, reducing wait times and labor costs. Integrated with the eatOS Point of Sale and Kitchen Display Systems, it ensures smooth order management while offering features like personalized menu suggestions and contactless payments, helping restaurants maximize efficiency and profitability',
                image: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      left: -.1.sw,
                      bottom: 0,
                      child: const Image(
                        image: AssetImage('assets/images/kiosk_1.png'),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: -.1.sw,
                      left: -.1.sw,
                      bottom: -.1.sh,
                      child: const Image(
                        image: AssetImage('assets/images/kiosk_2.png'),
                      ),
                    ),
                  ],
                )),
            _portfolioCard(
                titleColor: Colors.pink,
                context: context,
                logoUrl: 'assets/images/eatos_logo_2.png',
                title: 'EatOS - POS',
                buttonText: 'iOS Link',
                urlLink:
                    'https://apps.apple.com/us/app/restaurant-point-of-sale-eatos/id1478907136',
                description:
                    'The eatOS Point of Sale (POS) system is a comprehensive solution tailored to optimize restaurant operations. It offers an intuitive interface for seamless order management, supports multiple payment methods, and integrates with other eatOS tools like self-service kiosks and kitchen display systems. Designed for flexibility, the POS is suitable for both countertop and mobile use, allowing for efficient tableside ordering and payment processing. It also features robust reporting and analytics, helping restaurants track sales, manage inventory, and improve decision-making.',
                image: const Image(image: AssetImage('assets/images/pos.png')),
                imageOnRight: true),
            _portfolioCard(
                titleColor: Colors.pink,
                context: context,
                logoUrl: 'assets/images/eatos_logo_2.png',
                title: 'EatOS - Kitchen Display System',
                description:
                    'The eatOS Kitchen Display System (KDS) is a digital solution that streamlines kitchen operations by replacing traditional paper tickets with interactive displays. Orders placed through the eatOS POS or kiosks are instantly routed to the KDS, ensuring accuracy and reducing delays. The system organizes orders by priority, tracks preparation times, and provides real-time updates, helping kitchen staff maintain efficiency during peak hours. It supports multiple screen setups and is customizable to match various restaurant workflows, ensuring seamless communication between front-of-house and kitchen teams.',
                image: const Image(image: AssetImage('assets/images/kds.png')),
                buttonText: 'Android Link',
                urlLink:
                    'https://play.google.com/store/apps/details?id=com.poslabs.eoskds'),
            _portfolioCard(
                titleColor: Colors.pink,
                context: context,
                logoUrl: 'assets/images/eatos_logo_2.png',
                imageOnRight: true,
                title: 'EatOS - Point Of Purchase',
                description:
                    'The eatOS Point of Purchase (POP) system is designed to optimize customer interactions at the point of sale, enhancing the purchasing experience. It integrates seamlessly with the eatOS ecosystem, including kiosks, POS, and mobile devices, offering flexibility for payments and upselling opportunities. The POP system is equipped with features like promotional displays, loyalty program integration, and customized receipts, enabling restaurants to increase revenue while building stronger customer relationships.',
                image: const Image(image: AssetImage('assets/images/pop.png')),
                buttonText: 'Android Link',
                urlLink:
                    'https://play.google.com/store/apps/details?id=com.eatos.pos&hl=en'),
            _portfolioCard(
                titleColor: Colors.pink,
                context: context,
                logoUrl: 'assets/images/eatos_logo_2.png',
                isLinkHidden: true,
                title: 'EatOS - Customer Facing Display',
                description:
                    'The Customer-Facing Display (CFD) from eatOS is designed to enhance transparency and customer interaction during transactions. It presents essential order details, pricing, and promotions directly to customers on a secondary screen, fostering trust and engagement. Additionally, the CFD can display upselling opportunities, helping businesses increase revenue. Its sleek design and seamless integration with eatOS POS systems make it an invaluable tool for modern restaurants aiming to improve customer satisfaction and streamline operations',
                image: const Image(image: AssetImage('assets/images/cfd.png')),
                buttonText: 'Hidden',
                urlLink: ''),
            _portfolioCard(
                titleColor: Colors.orange,
                context: context,
                logoUrl: 'assets/images/babuland_logo.png',
                title: 'Babuland',
                imageOnRight: true,
                description:
                    'Babuland is the largest indoor playground service in Bangladesh, offering a safe and engaging environment for children to play, learn, and grow. It is designed as a haven where kids can create cherished memories in a space prioritizing hygiene and care. The Babuland app provides access to all services, along with exclusive offers, discounts, and exciting features to enhance the overall experience.',
                image: const Image(
                    image: AssetImage('assets/images/babuland.png')),
                buttonText: 'iOS Link',
                urlLink: 'https://apps.apple.com/us/app/babuland/id1644669214'),
            _portfolioCard(
                titleColor: Colors.orange,
                context: context,
                logoUrl: 'assets/images/babuland_logo.png',
                isLinkHidden: true,
                title: 'Babuland Host',
                description:
                    'The Babuland Host app is designed to complement the main Babuland application, streamlining operations and enhancing user convenience. It enables seamless scanning and tracking of tickets purchased through the primary app, reducing customer wait times and ensuring quick entry into branches. Additionally, the app provides critical business analytics, offering valuable insights to improve management efficiency while elevating the overall customer experience.',
                image: const Image(
                    image: AssetImage('assets/images/babuland_host.png')),
                buttonText: 'Hidden',
                urlLink: '')
          ],
        ],
      ),
    );
  }

  Future<void> _launchUrl(String urlLink) async {
    final Uri url = Uri.parse(urlLink);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  Widget _portfolioCard({
    required BuildContext context,
    required String title,
    required String description,
    required Widget image,
    required String buttonText,
    required String urlLink,
    Color? titleColor,
    String? logoUrl,
    bool? imageOnRight,
    bool? isLinkHidden,
  }) {
    final ScreenUtil screenUtil = ScreenUtil();
    final responsiveData = ResponsiveBreakpoints.of(context);
    return SizedBox(
      height: .45.sh,
      //color: Colors.pink,
      child: Row(
        children: [
          if (imageOnRight != true) Expanded(child: image),
          Expanded(
              child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //  color: Colors.teal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      if (responsiveData.isMobile == false) ...[
                        if (logoUrl != null) ...[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                fit: BoxFit.fitHeight,
                                logoUrl,
                                height: .05.sh,
                                width: .05.sh,
                                //image: AssetImage(logoUrl),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                        ]
                      ],
                      Expanded(
                        child: Text(
                          title,
                          style: TextStyle(
                              color: titleColor ?? Colors.white,
                              fontSize: .03.sh,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: .01.sh,
                ),
                SizedBox(
                  height: .2.sh,
                  width: double.infinity,
                  child: ScrollLoopAutoScroll(
                    duplicateChild: 1,
                    enableScrollInput: false,
                    //reverseScroll: false,
                    duration: const Duration(milliseconds: 10000),
                    scrollDirection: Axis.vertical,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        description,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: .017.sh,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: .015.sh,
                ),
                InkWell(
                  onTap: () {
                    if (isLinkHidden == true) {
                      return;
                    } else {
                      _launchUrl(urlLink);
                    }
                  },
                  child: Container(
                    height: screenUtil.setHeight(100),
                    width: screenUtil.setHeight(300),
                    decoration: BoxDecoration(
                        color: isLinkHidden == true
                            ? Colors.grey.shade400
                            : Colors.lightGreenAccent,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        buttonText,
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
          )),
          if (imageOnRight == true) Expanded(child: image),
        ],
      ),
    );
  }
}
