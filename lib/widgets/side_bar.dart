import 'package:flutter/material.dart';
import 'package:practo_web_admin/dashboard/hospitalfeed.dart';
import 'package:practo_web_admin/dashboard/dashboard.dart';
import 'package:practo_web_admin/dashboard/payment_manager.dart';
import 'package:practo_web_admin/dashboard/hobby.dart';
import 'package:practo_web_admin/dashboard/doctors_feed.dart';
import 'package:practo_web_admin/dashboard/paitent_feed.dart';
import 'package:sidebarx/sidebarx.dart';

class SideDrawer extends StatefulWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  State<SideDrawer> createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  final _controller = SidebarXController(selectedIndex: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SidebarX(
            controller: _controller,
            theme: SidebarXTheme(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: canvasColor,
                borderRadius: BorderRadius.circular(20),
              ),
              textStyle: const TextStyle(color: Colors.black),
              selectedTextStyle: const TextStyle(color: Colors.black),
              itemTextPadding: const EdgeInsets.only(left: 30),
              selectedItemTextPadding: const EdgeInsets.only(left: 30),
              itemDecoration: BoxDecoration(
                border: Border.all(color: canvasColor),
              ),
              iconTheme: const IconThemeData(
                color: Colors.black,
                size: 20,
              ),
            ),
            extendedTheme: const SidebarXTheme(
              width: 200,
              decoration: BoxDecoration(
                color: canvasColor,
              ),
              margin: EdgeInsets.only(right: 10),
            ),
            headerBuilder: (context, extended) {
              return SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('assets/splash.png'),
                ),
              );
            },
            items: [
              const SidebarXItem(
                icon: Icons.outbox_rounded,
                label: 'Dashboard',
              ),
              const SidebarXItem(
                icon: Icons.dashboard_customize_sharp,
                label: 'Doctors',
              ),
              const SidebarXItem(
                icon: Icons.person,
                label: 'Paitient',
              ),
              const SidebarXItem(
                icon: Icons.paid_outlined,
                label: 'Hospitals',
              ),
              const SidebarXItem(
                icon: Icons.payment,
                label: 'Payment-Manager',
              ),
            ],
          ),
          Expanded(
            child: Center(
              child: _ScreensExample(controller: _controller),
            ),
          ),
        ],
      ),
    );
  }
}

class _ScreensExample extends StatelessWidget {
  const _ScreensExample({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SidebarXController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        switch (controller.selectedIndex) {
          case 0:
            return const Dashboard();
          case 1:
            return const DoctorsFeed();
          case 2:
            return const PaitientFeed();
          case 3:
            return const HospitalFeed();
          case 4:
            return const PaymetManager();

          case 5:
            return const Text('Log Out User');
          default:
            return Text(
              'Not found page',
              style: theme.textTheme.headline5,
            );
        }
      },
    );
  }
}

const canvasColor = Colors.white;
const accentCanvasColor = Colors.black;
const white = Colors.black;
final actionColor = Colors.black;
