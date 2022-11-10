import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_gradients/flutter_gradients.dart';
import 'package:vertical_tabs_flutter/vertical_tabs.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {

  var isHome = false;
  var isWork = false;
  var isContact = false;

  void initiateState() {}

  @override
  Widget build(BuildContext context) {
    initiateState();
    Scaffold scaffoldToUser;
    var deviceWidth = MediaQuery.of(context).size.width;
    scaffoldToUser = deviceWidth > 500 ? webLayout(context) : appLayout();
    return MaterialApp(home: scaffoldToUser);
  }

  Expanded columnMain() {
    var isFirstRun = false;

    var positive = false;
    return Expanded(
        flex: 3,
        child: Card(
            elevation: 10,
            child: Container(


            )
        )
    );
  }

  Scaffold webLayout(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: mainAppBar(),
        body: Row(
          children: [
            columnSidebar(),
            columnMain(),
            columnProfile()
          ],
        ));
  }

  Expanded columnSidebar() {
    return Expanded(
        flex: 1,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 10,
          child: Container(
            decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                sideNavHome(),
                sideNavWork(),
                sideNavBlogs(),
                sideNavVideos(),
                sideNavContact()
              ],
            ),


          ),
        ));
  }


  Expanded columnProfile() {
    return Expanded(
        flex: 1,
        child: Card(
          elevation: 10,
          child: Container(),
        ));
  }

  Card sideNavHome(){
   return Card(
      margin: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 10,
      child: Container(
          height: 50,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xff784cc6), Color(0x82784cc6)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child:  const Icon(Icons.home_rounded, color: Colors.white),
              ),
              const Text("Home", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: Colors.white))
            ],
          )
      ),
    );
  }

  Card sideNavWork(){
    return Card(
      margin: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 0,
      child: Container(
          height: 50,
          decoration: BoxDecoration(
            // gradient: FlutterGradients.lilyMeadow(),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child:  const Icon(Icons.work_history_rounded, color: Colors.black54),
              ),
              const Text("My Work", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: Colors.black54))
            ],
          )
      ),
    );
  }

  Card sideNavVideos(){
    return Card(
      margin: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 0,
      child: Container(
          height: 50,
          decoration: BoxDecoration(
            // gradient: FlutterGradients.lilyMeadow(),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child:  const Icon(Icons.browse_gallery_rounded, color: Colors.black54),
              ),
              const Text("Videos", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: Colors.black54))
            ],
          )
      ),
    );
  }

  Card sideNavContact(){
    return Card(
      margin: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 0,
      child: Container(
          height: 50,
          decoration: BoxDecoration(
            // gradient: FlutterGradients.lilyMeadow(),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child:  const Icon(Icons.contacts_rounded, color: Colors.black54),
              ),
              const Text("Contact", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: Colors.black54))
            ],
          )
      ),
    );
  }

  Card sideNavBlogs(){
    return Card(
      margin: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 0,
      child: Container(
          height: 50,
          decoration: BoxDecoration(
            // gradient: FlutterGradients.lilyMeadow(),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child:  const Icon(Icons.pages_rounded, color: Colors.black54),
              ),
              const Text("Blogs", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: Colors.black54))
            ],
          )
      ),
    );
  }



  AppBar mainAppBar() {
    return AppBar(
      toolbarHeight: 70, // Set
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(0),
        ),
      ),
      flexibleSpace: Container(
        color: Colors.white,
          child: Column(
            children: const [Text('One')],
          )),
    );
  }



  Scaffold appLayout() {
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.green,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.black,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
      ],
    ));
  }
}

