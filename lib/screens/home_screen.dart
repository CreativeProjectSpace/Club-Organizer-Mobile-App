import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              Text("Home", style: Theme.of(context).textTheme.headlineMedium),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              children: const <Widget>[
                Card(
                  child: ListTile(
                    title: Text("Events"),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
