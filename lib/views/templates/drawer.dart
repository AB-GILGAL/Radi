import 'package:flutter/material.dart';
import 'package:radi_app/views/screens/deposit.dart';
import 'package:radi_app/views/screens/signup_and_Login/login.dart';
import 'package:radi_app/views/templates/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../firebase/auth_services.dart';

class DrawerBar extends StatefulWidget {
  const DrawerBar({super.key});

  @override
  State<DrawerBar> createState() => _DrawerBarState();
}

class _DrawerBarState extends State<DrawerBar> {
  AuthServices authServices = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 32, 32, 32),
      child: ListView(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0),
          children: [
            DrawerHeader(
              padding:
                  EdgeInsets.all(MediaQuery.of(context).size.height / 84.4),
              decoration: const BoxDecoration(),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 71, 71, 71),
                    borderRadius: BorderRadius.circular(10)),
                accountName: Text(
                  "James Doe",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 42.2),
                ),
                accountEmail: Text(
                  "GHS 50,000",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 42.2),
                ),
                currentAccountPictureSize:
                    Size.fromRadius(MediaQuery.of(context).size.height / 33.76),
                currentAccountPicture: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("JD"),
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.notifications_rounded,
                color: Colors.white,
                size: MediaQuery.of(context).size.height / 28.13,
              ),
              title: Text(
                "Notification",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height / 46.88),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const DepositView();
                  },
                ));
              },
              leading: Icon(
                Icons.install_mobile,
                color: Colors.white,
                size: MediaQuery.of(context).size.height / 28.13,
              ),
              title: Text(
                "Deposit",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height / 46.88),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.mobile_friendly,
                color: Colors.white,
                size: MediaQuery.of(context).size.height / 28.13,
              ),
              title: Text(
                "Withdraw",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height / 46.88),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.work_history_sharp,
                color: Colors.white,
                size: MediaQuery.of(context).size.height / 28.13,
              ),
              title: Text(
                "History",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height / 46.88),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.help,
                color: Colors.white,
                size: MediaQuery.of(context).size.height / 28.13,
              ),
              title: Text(
                "Help",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height / 46.88),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.grading_outlined,
                color: Colors.white,
                size: MediaQuery.of(context).size.height / 28.13,
              ),
              title: Text(
                "Guide",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height / 46.88),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.info_rounded,
                color: Colors.white,
                size: MediaQuery.of(context).size.height / 28.13,
              ),
              title: Text(
                "About",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height / 46.88),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            ListTile(
              onTap: () async {
                authServices.signOut().then((value) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginView(),
                      ));
                });
                SharedPreferences sharedPreferences =
                    await SharedPreferences.getInstance();
                sharedPreferences.setBool(SplashScreenState.keyLogin, false);
              },
              leading: Icon(
                Icons.logout_outlined,
                color: Colors.white,
                size: MediaQuery.of(context).size.height / 28.13,
              ),
              title: Text(
                "Logout",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height / 46.88),
              ),
            )
          ]),
    );
  }
}
