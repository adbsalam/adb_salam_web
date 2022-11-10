import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:adb_salam_web/nav/NavigationUtil.dart';
import 'package:adb_salam_web/screens/home/HomeScreen.dart';
import 'package:adb_salam_web/themeUtil/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  late Timer _timer;
  int threadIndex = 0;
  int _start = 2;
  bool isFinished = false;

  void initiateState(BuildContext context){

    _timer = Timer.periodic(const Duration(seconds: 2),
          (Timer timer) {
        if (_start == 0) {
          if(isFinished == false){
            isFinished = true;
            NavigationUtil.navigateToScreen(context, HomeScreen());
            timer.cancel();
          }
        } else {
            _start--;
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }


  @override
  Widget build(BuildContext context) {

    initiateState(context);

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LoadingAnimationWidget.discreteCircle(
                      color: Colors.black,
                      size: 50)
                ],
              ),
              Container(
                padding: const EdgeInsets.only(top: 20),
                  child: const Text(
                    "Please Wait..",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )
              )
            ],
          )
        ),
      ),
    );
  }
}

AnimatedContainer animatedLoadingContainer(double width, double height, Color color){
  return AnimatedContainer(
    margin: const EdgeInsets.all(10),
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: color,
      borderRadius:BorderRadius.circular(50),
    ),
    duration: Duration(seconds: 1),
    curve: Curves.fastOutSlowIn,
  );
}



