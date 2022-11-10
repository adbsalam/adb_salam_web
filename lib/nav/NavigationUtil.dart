


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationUtil{

static void navigateToScreen(BuildContext context, StatefulWidget screenName){
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screenName),
  );
}


}
