import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late bool _darkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text("Settings", style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: ListView(
            children: <Widget>[
              //Settings ------------------------------
              Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: const Text("Dark Mode"),
                      trailing: Switch(
                        value: _darkMode,
                        onChanged: (bool value) {
                          setState(() {
                            _darkMode = value;
                          });
                        },
                      ),
                    ),
                  ],
                )
              ),
              const SizedBox(height: 50),
              //About ------------------------------
              Card(
                child: Column(
                  children: const <Widget>[
                    ListTile(
                      title: Text("About"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      title: Text("Rate Us"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      title: Text("Share"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      title: Text("Report a bug"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      title: Text("FAQ"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      title: Text("Contact Us"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      title: Text("Privacy Policy"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      title: Text("Terms of Service"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      title: Text("Version"),
                      trailing: Text("1.0.0"),
                    ),
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
