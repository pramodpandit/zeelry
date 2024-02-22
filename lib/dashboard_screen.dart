import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/account_screens/profile_screen.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  ValueNotifier<int> currentIndex = ValueNotifier(0);

  List pages = [
    Text("home screen"),
    Text("passbook screen"),
    Text("Scan Screen"),
    Text("Notification screen"),
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
            NavigationDestination(icon: Icon(Icons.password), label: "Password"),
            NavigationDestination(icon: Icon(Icons.qr_code), label: "Scan"),
            NavigationDestination(icon: Icon(Icons.notifications), label: "Notification"),
            NavigationDestination(icon: FaIcon(FontAwesomeIcons.user), label: "Home")
          ],
        );
      },)
    );
  }
}
