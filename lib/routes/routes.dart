
import 'package:flutter/material.dart';
import 'package:recicladora_california/pages/home.dart';

Map<String, WidgetBuilder> getAplicationRoutes(){
  return <String, WidgetBuilder>{
  '/': (BuildContext context)=>Home(),
};
} 