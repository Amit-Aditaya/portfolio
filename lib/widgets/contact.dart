import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    final responsiveData = ResponsiveBreakpoints.of(context);
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: responsiveData.isMobile ? .05.sw : .1.sw),
      // /height: 0.2.sh,
      //color: Colors.red,
      child: responsiveData.isMobile || responsiveData.isTablet
          ? _mobileView()
          : const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _ContactCard(
                  icon: Icons.location_on,
                  label: "ADDRESS",
                  details: "Bashundhara R/A\nDhaka, 1229",
                ),
                _ContactCard(
                  icon: Icons.phone,
                  label: "PHONE",
                  details: "+8801911817331",
                ),
                _ContactCard(
                  icon: Icons.email,
                  label: "EMAIL",
                  details: "amit.aditaya99@gmail.com",
                ),
                _ContactCard(
                  icon: Icons.contact_phone_outlined,
                  label: "WHATSAPP",
                  details: "+8801911817331",
                ),
              ],
            ),
    );
  }

  Widget _mobileView() {
    return const Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _ContactCard(
              icon: Icons.location_on,
              label: "ADDRESS",
              details: "Bashundhara R/A,Dhaka, 1229",
            ),
            _ContactCard(
              icon: Icons.phone,
              label: "PHONE",
              details: "+8801911817331",
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _ContactCard(
              icon: Icons.email,
              label: "EMAIL",
              details: "amit.aditaya99@gmail.com",
            ),
            _ContactCard(
              icon: Icons.contact_phone_outlined,
              label: "WHATSAPP",
              details: "+8801911817331",
            ),
          ],
        ),
      ],
    );
  }
}

class _ContactCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String details;

  const _ContactCard({
    required this.icon,
    required this.label,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.lightGreenAccent, size: 32),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          details,
          maxLines: 2,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
