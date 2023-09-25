import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
            bottom: TabBar(
              tabs: [
                Tab(text: "Home",icon:Icon(Icons.home)),
                Tab(text: "Inbox",icon:Icon(Icons.inbox)),
                Tab(text: "Settings",icon:Icon(Icons.settings)),

              ],
            ),

          ),
          body: TabBarView(
            children: [
              TabDemo(),
              Text("Screen 2"),
              Text("Screen3")
            ],

          ),
        ),
      ),
    );
  }
}


class TabDemo extends StatefulWidget {
  const TabDemo({Key? key}) : super(key: key);

  @override
  State<TabDemo> createState() => _TabDemoState();
}

class _TabDemoState extends State<TabDemo> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
