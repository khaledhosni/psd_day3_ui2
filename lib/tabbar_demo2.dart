import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),

          ),
          body: Center(child: TabDemo())


      ),
    );
  }
}


class TabDemo extends StatefulWidget {
  const TabDemo({Key? key}) : super(key: key);

  @override
  State<TabDemo> createState() => _TabDemoState();
}

class _TabDemoState extends State<TabDemo> with TickerProviderStateMixin{

  late var tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController= TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        FlutterLogo(size: 256,),
        TabBar(
            controller: tabController,
            tabs: [
          Tab(text: "Home",icon:Icon(Icons.home,color: Colors.amber,)),
          Tab(text: "Inbox",icon:Icon(Icons.inbox,color: Colors.amber,)),
          Tab(text: "Settings",icon:Icon(Icons.settings,color: Colors.amber,)),
        ]
        ),
        Expanded(
          child: TabBarView(
              controller: tabController ,
              children: [
            Text("Screen 1"),
            Text("Screen 2"),
            Text("Screen 3"),
          ]
          ),
        )
      ],
    );
  }
}


