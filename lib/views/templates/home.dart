import 'package:flutter/material.dart';
import 'package:radi_app/utils/colors.dart';
import 'package:radi_app/views/dashboard/Portfolio.dart';
import 'package:radi_app/views/dashboard/financial_statement.dart';
import 'package:radi_app/views/dashboard/home_page.dart';
import 'package:radi_app/views/dashboard/profile.dart';
import 'package:radi_app/views/dashboard/settings.dart';
import 'package:radi_app/views/templates/drawer.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentSelectedIndex = 0;
  void selectedScreen(int index) {
    setState(() {
      currentSelectedIndex = index;
    });
  }

  final List screens = [
    {"screen": const MyHomePage(), "title": "Home"},
    {"screen": const FinancialStatementPage(), "title": "Financial Statement"},
    {"screen": const PortfolioPage(), "title": "Portfolio"},
    {"screen": const SettingsPage(), "title": "Settings"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerBar(),
      appBar: AppBar(
          centerTitle: true,
          title: Text(screens[currentSelectedIndex]["title"]),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const ProfileView();
                    },
                  ));
                },
                icon: const Icon(Icons.person))
          ],
          foregroundColor: AppColors.appBarForegroundColor,
          backgroundColor: AppColors.appBarBackgroundColor),
      body: screens[currentSelectedIndex]["screen"],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color(0xFFe8e8e8),
                blurRadius: 5.0,
                offset: Offset(0, -2)),
          ],
        ),
        child: BottomNavigationBar(
            elevation: 5,
            selectedItemColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.grey,
            currentIndex: currentSelectedIndex,
            onTap: selectedScreen,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.manage_search), label: "Research"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.folder_outlined), label: "Portfolio"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings")
            ]),
      ),
    );
  }
}
