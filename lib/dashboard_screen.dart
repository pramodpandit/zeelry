import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/account_screens/profile_screen.dart';
import 'package:untitled/scan_to_pay/scan_to_pay_screen.dart';
import 'package:untitled/ui/HomePage.dart';
import 'package:untitled/ui/Notification.dart';
import 'package:untitled/widget/passbook.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  ValueNotifier<int> currentIndex = ValueNotifier(2);
  List pages = [
    HomePage(),
    passbook(),
    ScanToPay(),
    notificationUser(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: currentIndex,
        builder: (context, currentPage, child) {
        return pages[currentPage];
      },),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: currentIndex,
        builder: (context, currentPage, child) {
        return NavigationBar(
          selectedIndex: currentPage,
          onDestinationSelected: (value) {
            currentIndex.value = value;
          },
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.book), label: "Passbook"),
            NavigationDestination(icon: Icon(Icons.qr_code), label: "Scan"),
            NavigationDestination(icon: Icon(Icons.notifications), label: "Notification"),
            NavigationDestination(icon: FaIcon(FontAwesomeIcons.user), label: "Profile")
          ],
        );
      },)
    );
  }
}
