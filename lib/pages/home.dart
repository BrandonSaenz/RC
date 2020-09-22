import 'package:flutter/material.dart';
import 'package:recicladora_california/styles.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class Cliente{
  int id; String name;
  Cliente(this.id, this.name);

  static  List<Cliente> getCliente(){
    return <Cliente>[
      Cliente(1, 'Raúl Hernandez'),
      Cliente(2, 'Diego Herrera'),
      Cliente(3, 'Brandon Sáenz'),
      Cliente(4, 'Fernando Suarez'),
      Cliente(5, 'Raymundo Castro'),
      Cliente(6, 'Yanni Gonzalez')
    ];
  }
}


class _HomeState extends State<Home> {
  Size media; double rsp;

  List<Cliente> _clientes=Cliente.getCliente();
  List<DropdownMenuItem<Cliente>> _dropdownItems;


  @override
  Widget build(BuildContext context) {
    media=MediaQuery.of(context).size; rsp=media.width;
    String dropdownValue = 'Nombre del Cliente';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(58, 137, 45, 1.0),
        title: Center(child: Text('ADMINISTRACIÓN DE CONTENEDORES',  style: TextStyle(fontSize: 0.045*rsp))),
      ),
      body: Container(
        child: Column(
          children:[
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 0.06*rsp, 0.0, 0.02*rsp),
              child: Text('Número de registro: 14', style: TextStyle(fontSize: 0.06*rsp),),
            ),
            Container(padding: EdgeInsets.fromLTRB(0.04*rsp, 0.05*rsp, 0.0, 0.0),
              child: Row(
                children: [
                  Container(width: 0.925*rsp, height: 0.2*rsp,decoration: styleContainer(context), margin: EdgeInsets.fromLTRB(0.0*rsp, 0.0, 0.0, 0.0),
                    child: Row(
                      children: [
                        Container( width: 0.65*rsp,
                          margin: EdgeInsets.fromLTRB(0.06*rsp, 0.0, 0.0, 0.0),
                          child: DropdownButton<String>(
                            value: dropdownValue, icon: Icon(Icons.keyboard_arrow_down), iconSize: 24, elevation: 16,
                            style: TextStyle(color: Color.fromRGBO(58, 137, 45, 1.0), fontSize: 0.06*rsp),
                            underline: Container(
                              height: 2, color: Color.fromRGBO(58, 137, 45, 1.0),
                            ),
                            items: <String>[
                              'Nombre del Cliente', 
                              'Fernando Herrera', 
                              'Raúl Hernandez', 
                              'Rommel Humberto']
                              .map<DropdownMenuItem<String>>(
                                (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }
                              ).toList(),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
                              });
                            },
                          ),
                        ),
                        FlatButton(padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                          onPressed: (){},
                          child: Icon(
                            Icons.add_box, size: 0.13*rsp
                          ),
                        )
                      ],
                    ),
                  )
                ]
              ),
            )
          ]
        ),
      ),
    );
  }
}