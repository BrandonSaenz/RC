
import 'package:flutter/material.dart';
import 'package:recicladora_california/pages/home.dart';
import 'package:recicladora_california/pages/home2.dart';

Map<String, WidgetBuilder> getAplicationRoutes(){
  return <String, WidgetBuilder>{
  '/': (BuildContext context)=>Home(),
  'home2':(BuildContext context)=>Home2()
};
} 