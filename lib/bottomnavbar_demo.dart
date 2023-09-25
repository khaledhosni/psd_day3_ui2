import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyScreen()
    );
  }
}


class MyScreen extends StatefulWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {

  var mainScreens=[
    Text("Screen1"),
    Text("Screen2"),
    Text("Screen3"),

  ];

  var currentScreen=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PSD APP"),
      ),

      body: Center(
        child:mainScreens[currentScreen] ,
      ),


      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){

          setState(() {
            currentScreen=index;
          });

        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.business),label: "Business"),
          BottomNavigationBarItem(icon: Icon(Icons.school),label: "School"),
        ],

        elevation: 4,
        currentIndex: currentScreen,
        backgroundColor: Colors.red,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
      ),
    );
  }
}


// for notched button
//https://api.flutter.dev/flutter/material/BottomAppBar-class.html