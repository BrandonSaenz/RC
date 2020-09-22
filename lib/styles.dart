import 'package:flutter/cupertino.dart';

BoxDecoration styleContainer(BuildContext context){
  Size media=MediaQuery.of(context).size;
  double rsp=media.width;
  return BoxDecoration(
    color: Color.fromRGBO(255,255,255, 1),
    borderRadius: BorderRadius.circular(0.03*rsp),
    boxShadow: [
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.5), spreadRadius: 0, blurRadius: 5, offset: Offset(0, 0) // changes position of shadow
      ),
    ]
  );
}