import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {

  var isHome = false;
  var isWork = false;
  var isContact = false;
  var animationDuration = const Duration(milliseconds: 200);

  void initiateState() {}

  @override
  Widget build(BuildContext context) {
    initiateState();
    Scaffold scaffoldToUser;
    var deviceWidth = MediaQuery.of(context).size.width;
    scaffoldToUser = deviceWidth > 500 ? webLayout(context) : appLayout();
    return MaterialApp(home: scaffoldToUser);
  }

  Expanded columnMain(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;

    var isFirstRun = false;

    var positive = false;
    return Expanded(
        flex: 4,
        child: Card(
            elevation: 10,
            child: Container(
              height: deviceHeight,
              child: Text("IN PROGRES...", style: TextStyle(fontSize: 30),)

            )
        )
    );
  }

  Scaffold webLayout(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: mainAppBar(),
        body: Row(
          children: [
            columnSidebar(),
            columnMain(context),
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
                sideNavHome().animate().fadeIn(duration: animationDuration),
                sideNavWork().animate().fadeIn(delay: animationDuration, duration: animationDuration).slide(duration: animationDuration),
                sideNavBlogs().animate().fadeIn(delay: const Duration(milliseconds: 400), duration: animationDuration).slide(duration: animationDuration),
                sideNavVideos().animate().fadeIn(delay: const Duration(milliseconds: 600), duration: animationDuration).slide(duration: animationDuration),
                sideNavContact().animate().fadeIn(delay: const Duration(milliseconds: 800), duration: animationDuration).slide(duration: animationDuration),
                sideNavReviews().animate().fadeIn(delay: const Duration(milliseconds: 1000), duration: animationDuration).slide(duration: animationDuration),
              ],
            ),
          ),
        ));
  }


  Expanded columnProfile() {
    return Expanded(
        flex: 2,
        child: Card(
          elevation: 10,
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [

                    Container(
                      width: 150,
                      height: 150,
                    margin: EdgeInsets.only(top: 50, bottom: 20),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/ic_dp_main.jpeg"),
                          fit: BoxFit.contain
                      ),
                    ),
                  ),
                      Text(
                        'Muhammad Abdul Salam',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(color: Colors.black, letterSpacing: .5, fontSize: 18, fontWeight: FontWeight.w800),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.all(5),
                          child: const Text("Android Developer",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Colors.green
                            ),
                          )
                      ),

                      Row(children: [
                        Expanded(
                            flex: 1,
                            child: Card(
                              color: Color(0xffe9dffe),
                              margin: EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              elevation: 5,
                              child: Container(
                                height: 200,
                                decoration: BoxDecoration(
                                    // gradient: FlutterGradients.lilyMeadow(),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                        )),

                        Expanded(
                            flex: 1,
                            child: Card(
                              color: Color(0xfffee9df),
                              margin: EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              elevation: 5,
                              child: Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  // gradient: FlutterGradients.lilyMeadow(),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            )),

                        Expanded(
                            flex: 1,
                            child: Card(
                              color: Color(0xfffef3de),
                              margin: EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              elevation: 5,
                              child: Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  // gradient: FlutterGradients.lilyMeadow(),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            )),
                      ],)


                    ],
                  ),
              ),

            ],
          ),
        ));
  }

  Widget cardTop(){

    return Column(
      children: [
        Container(
          width: 200,
          height: 100,
          color: Colors.red,
        )
      ],
    );
  }


  Widget cardBottom(){
    return Column(
      children: [
        Container(
         child: Text("Something here")
        )
      ],
    );
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
              colors: [Color(0xffa67aff), Color(0xffc4a8fd)],
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

  Card sideNavReviews(){
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
                child:  const Icon(Icons.reviews_outlined, color: Colors.black54),
              ),
              const Text("Reviews", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: Colors.black54))
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
            children: const [Text('')],
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

