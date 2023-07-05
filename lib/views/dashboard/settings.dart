import 'package:flutter/material.dart';
import 'package:radi_app/widgets/settings.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(
              MediaQuery.of(context).size.height / 42.2,
              MediaQuery.of(context).size.height / 42.2,
              MediaQuery.of(context).size.height / 42.2,
              MediaQuery.of(context).size.height / 84.4),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 8.44,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xFFe8e8e8),
                        blurRadius: 5.0,
                        offset: Offset(0, 5)),
                    BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                    BoxShadow(color: Colors.white, offset: Offset(5, 0))
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.all(MediaQuery.of(context).size.height / 84.4),
                  leading: Container(
                    height: MediaQuery.of(context).size.height / 12.05,
                    width: MediaQuery.of(context).size.height / 12.05,
                    decoration: const BoxDecoration(
                      color: Colors.teal,
                    ),
                  ),
                  title: const Text("James Doe"),
                  subtitle: const Text("jamesdoe@gmail.com"),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xFFe8e8e8),
                        blurRadius: 5.0,
                        offset: Offset(0, 5)),
                    BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                    BoxShadow(color: Colors.white, offset: Offset(5, 0))
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    settingsSelect(
                        iconSize: MediaQuery.of(context).size.height / 42.2,
                        fontSize: MediaQuery.of(context).size.height / 46.88,
                        icon: Icon(
                          Icons.manage_accounts,
                          size: MediaQuery.of(context).size.height / 42.2,
                        ),
                        title: "Accounts & Settings"),
                    Divider(
                      color: Colors.grey[70],
                    ),
                    settingsSelect(
                        iconSize: MediaQuery.of(context).size.height / 42.2,
                        fontSize: MediaQuery.of(context).size.height / 46.88,
                        icon: Icon(
                          Icons.person_pin_rounded,
                          size: MediaQuery.of(context).size.height / 42.2,
                        ),
                        title: "Personal Settings"),
                    Divider(
                      color: Colors.grey[70],
                    ),
                    settingsSelect(
                        iconSize: MediaQuery.of(context).size.height / 42.2,
                        fontSize: MediaQuery.of(context).size.height / 46.88,
                        icon: Icon(
                          Icons.favorite,
                          size: MediaQuery.of(context).size.height / 42.2,
                        ),
                        title: "Favourite"),
                    Divider(
                      color: Colors.grey[70],
                    ),
                    settingsSelect(
                        iconSize: MediaQuery.of(context).size.height / 42.2,
                        fontSize: MediaQuery.of(context).size.height / 46.88,
                        icon: Icon(
                          Icons.subscriptions_rounded,
                          size: MediaQuery.of(context).size.height / 42.2,
                        ),
                        title: "Subscription"),
                    Divider(
                      color: Colors.grey[70],
                    ),
                    settingsSelect(
                        iconSize: MediaQuery.of(context).size.height / 42.2,
                        fontSize: MediaQuery.of(context).size.height / 46.88,
                        icon: Icon(
                          Icons.support_agent_rounded,
                          size: MediaQuery.of(context).size.height / 42.2,
                        ),
                        title: "Support"),
                    Divider(
                      color: Colors.grey[70],
                    ),
                    settingsSelect(
                        iconSize: MediaQuery.of(context).size.height / 42.2,
                        icon: Icon(
                          Icons.security_rounded,
                          size: MediaQuery.of(context).size.height / 42.2,
                        ),
                        fontSize: MediaQuery.of(context).size.height / 46.88,
                        title: "Privacy and Settings"),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
