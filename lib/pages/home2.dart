import 'package:flutter/material.dart';
import 'package:recicladora_california/styles.dart';

class Home2 extends StatefulWidget {
  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  Size media; double rsp; Color colorTheme=Color.fromRGBO(58, 137, 45, 1.0); 
  Color colorDark=Color.fromRGBO(32, 32, 32, 1.0); 
  Icon add=Icon(Icons.add_box, size: 50, color: Color.fromRGBO(32, 32, 32, 1.0));
  Icon selection=Icon(Icons.keyboard_arrow_down, color: Color.fromRGBO(32, 32, 32, 1.0));
  Icon check=Icon(Icons.check_box, color: Color.fromRGBO(58, 137, 45, 1.0));

  String valueCliente; String selectedCliente; Icon iconCliente; Color textCliente;
  String valueMaterial; String selectedMaterial; Icon iconMaterial; Color textMaterial;
  String valueChofer; String selectedChofer; Icon iconChofer; Color textChofer;
  String valueDestino; String selectedDestino; Icon iconDestino; Color textDestino;
  String valueContIn; String selectedContIn; Icon iconContIn; Color textContIn;
  String valueContOut; String selectedContOut; Icon iconContOut; Color textContOut;

  String notasContInt; String notasContOut;

  @override
  void initState() {
    super.initState();
    valueCliente = 'Selecciona o agrega'; selectedCliente=''; iconCliente=selection; textCliente=colorDark;
    valueMaterial = 'Selecciona o agrega'; selectedMaterial=''; iconMaterial=selection; textMaterial=colorDark;
    valueChofer='Selecciona o agrega'; selectedChofer=''; iconChofer=selection; textChofer=colorDark;
    valueDestino='Selecciona o agrega'; selectedDestino=''; iconDestino=selection; textDestino=colorDark;
    valueContIn='0'; selectedContIn=''; textContIn=colorDark;
    valueContOut='0'; selectedContOut=''; textContOut=colorDark;
    notasContInt=''; notasContOut='';
  }

  void _showDialog(String nameDialog) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("$nameDialog"),
          content: TextField(),
          actions: <Widget>[
            
            FlatButton(
              child: new Text("Guardar", style: TextStyle(color: colorTheme),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: new Text("Cancelar", style: TextStyle(color: colorTheme),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }

   void guardar() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("GUARDADO CON ÉXITO", textAlign: TextAlign.center, style: TextStyle(color: colorTheme),),
          content: Icon(Icons.check_circle, color: colorTheme, size: 0.4*rsp,),
          actions: <Widget>[
            FlatButton(
              child: new Text("Aceptar", style: TextStyle(color: colorTheme),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    media=MediaQuery.of(context).size; rsp=media.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(58, 137, 45, 1.0),
        title: Center(child: Text('ADMINISTRACIÓN DE CONTENEDORES',  style: TextStyle(fontSize: 0.044*rsp))),
        leading: Container(),
      ),
      body: Container(
        child: ListView(
          children:[
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 0.06*rsp, 0.0, 0.0*rsp),
              child: Text('Número de registro: 15', style: TextStyle(fontSize: 0.06*rsp), textAlign: TextAlign.center,),
            ),
            Divider(height: 0.1*rsp, color: Color.fromRGBO(58, 137, 45, 1.0), thickness: 0.002*rsp,),
            Container(
              margin: EdgeInsets.fromLTRB(0.07*rsp, 0.0, 0.0, 0.04*rsp),
              child: Align(alignment: Alignment.centerLeft, child: Text('Nombre del cliente', style: TextStyle(fontSize: 0.06*rsp))),
            ),
            selectNombreCliente(),
            Divider(height: 0.1*rsp, color: Color.fromRGBO(58, 137, 45, 1.0), thickness: 0.002*rsp,),
            Container(
              margin: EdgeInsets.fromLTRB(0.07*rsp, 0.0, 0.0, 0.04*rsp),
              child: Align(alignment: Alignment.centerLeft, child: Text('Material', style: TextStyle(fontSize: 0.06*rsp))),
            ),
            material(),
            Divider(height: 0.1*rsp, color: Color.fromRGBO(58, 137, 45, 1.0), thickness: 0.002*rsp,),
            Container(
              margin: EdgeInsets.fromLTRB(0.07*rsp, 0.0, 0.0, 0.04*rsp),
              child: Align(alignment: Alignment.centerLeft, child: Text('Nombre del chofer', style: TextStyle(fontSize: 0.06*rsp))),
            ),
            nombreChofer(),
            Divider(height: 0.1*rsp, color: Color.fromRGBO(58, 137, 45, 1.0), thickness: 0.002*rsp,),
            Container(
              margin: EdgeInsets.fromLTRB(0.07*rsp, 0.0, 0.0, 0.04*rsp),
              child: Align(alignment: Alignment.centerLeft, child: Text('Dirección de destino', style: TextStyle(fontSize: 0.06*rsp))),
            ),
            destino(),
            Divider(height: 0.1*rsp, color: Color.fromRGBO(58, 137, 45, 1.0), thickness: 0.002*rsp,),
            Container(
              margin: EdgeInsets.fromLTRB(0.07*rsp, 0.0, 0.0, 0.04*rsp),
              child: Align(alignment: Alignment.centerLeft, child: Text('Contenedores', style: TextStyle(fontSize: 0.06*rsp))),
            ),
            contenedorIn_Out(),
            Divider(height: 0.1*rsp, color: Color.fromRGBO(58, 137, 45, 1.0), thickness: 0.002*rsp,),
            Container(
              margin: EdgeInsets.fromLTRB(0.07*rsp, 0.0, 0.0, 0.04*rsp),
              child: Align(alignment: Alignment.centerLeft, child: Text('Observaciones', style: TextStyle(fontSize: 0.06*rsp))),
            ),
            notas(),
            Divider(height: 0.2*rsp, color: Color.fromRGBO(58, 137, 45, 1.0), thickness: 0.002*rsp,),
            FlatButton(
              onPressed: ()=>guardar(), 
              child: Container(margin: EdgeInsets.fromLTRB(0.2*rsp, 0.0, 0.2*rsp, 0.0),
              padding: EdgeInsets.fromLTRB(0.0, 0.03*rsp, 0.0, 0.03*rsp),
                decoration: BoxDecoration(
                  color: colorTheme,
                  borderRadius: BorderRadius.circular(0.02*rsp)
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('GUARDAR', style: TextStyle(fontSize: 0.07*rsp, color: Colors.white),),
                    VerticalDivider(width: 0.02*rsp,),
                    Icon(Icons.save, size: 0.07*rsp, color: Colors.white)
                  ],
                ),
              )
            ),
            Divider(height: 0.2*rsp, color: Color.fromRGBO(58, 137, 45, 1.0), thickness: 0.002*rsp,),
          ]
        ),
      ),
    );
  }

  Widget selectNombreCliente(){
    return AnimatedContainer(width: 0.925*rsp, height: 0.2*rsp,decoration: styleContainer(context), margin: EdgeInsets.fromLTRB(0.04*rsp, 0.0, 0.04*rsp, 0.0),
      duration: Duration(milliseconds: 700),
      child: Row(
        children: [
          Container( width: 0.64*rsp,
            margin: EdgeInsets.fromLTRB(0.06*rsp, 0.0, 0.0, 0.0),
            child: DropdownButton<String>(
              value: valueCliente, icon: iconCliente, iconSize: 40, elevation: 16,
              style: TextStyle(color: textCliente, fontSize: 0.055*rsp),
              items: <String>[
                'Selecciona o agrega', 
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
                  valueCliente = newValue;
                  selectedCliente=newValue;
                  if(newValue=='Selecciona o agrega'){
                    iconCliente=selection;
                    textCliente=colorTheme;
                  }else{iconCliente=check;}
                  print(valueCliente);
                });
              },
            ),
          ),
          FlatButton(padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            onPressed: ()=>_showDialog('Registrar nuevo cliente'), child: add,
          )
        ],
      ),
    );
  }

  Widget material(){
    return AnimatedContainer(width: 0.925*rsp, height: 0.2*rsp,decoration: styleContainer(context), margin: EdgeInsets.fromLTRB(0.04*rsp, 0.0, 0.04*rsp, 0.0),
      duration: Duration(milliseconds: 700),
      child: Row(
        children: [
          Container( width: 0.64*rsp,
            margin: EdgeInsets.fromLTRB(0.06*rsp, 0.0, 0.0, 0.0),
            child: DropdownButton<String>(
              value: valueMaterial, icon: iconMaterial, iconSize: 40, elevation: 16,
              style: TextStyle(color: textMaterial, fontSize: 0.055*rsp),
              items: <String>[
                'Selecciona o agrega', 
                'Material 1', 
                'Material 2', 
                'Material 3']
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
                  valueMaterial = newValue;
                  selectedMaterial=newValue;
                  if(newValue=='Selecciona o agrega'){
                    iconMaterial=selection;
                    textMaterial==colorTheme;
                  }else{iconMaterial=check;}
                  print(valueMaterial);
                });
              },
            ),
          ),
          FlatButton(padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            onPressed: ()=>_showDialog('Guardar un nuevo material'), child: add,
          )
        ],
      ),
    );
  }

  Widget nombreChofer(){
    return Container(width: 0.925*rsp, height: 0.2*rsp,decoration: styleContainer(context), margin: EdgeInsets.fromLTRB(0.04*rsp, 0.0, 0.04*rsp, 0.0),
      child: Row(
        children: [
          Container( width: 0.64*rsp,
            margin: EdgeInsets.fromLTRB(0.06*rsp, 0.0, 0.0, 0.0),
            child: DropdownButton<String>(
              value: valueChofer, icon: iconChofer, iconSize: 40, elevation: 16,
              style: TextStyle(color: textChofer, fontSize: 0.055*rsp),
              items: <String>[
                'Selecciona o agrega', 
                'José Avalos', 
                'Eduardo Mendez', 
                'Roberto López']
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
                  valueChofer = newValue;
                  selectedChofer=newValue;
                  if(newValue=='Selecciona o agrega'){
                    iconChofer=selection;
                    textChofer=colorTheme;
                  }else{iconChofer=check;}
                  print(valueMaterial);
                });
              },
            ),
          ),
          FlatButton(padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            onPressed: ()=>_showDialog('Registrar nuevo chofer'), child: add,
          )
        ],
      ),
    );
  }

  Widget destino(){
    return Container(width: 0.925*rsp, height: 0.2*rsp,decoration: styleContainer(context), margin: EdgeInsets.fromLTRB(0.04*rsp, 0.0, 0.04*rsp, 0.0),
      child: Row(
        children: [
          Container( width: 0.64*rsp,
            margin: EdgeInsets.fromLTRB(0.06*rsp, 0.0, 0.0, 0.0),
            child: DropdownButton<String>(
              value: valueDestino, icon: iconDestino, iconSize: 40, elevation: 16,
              style: TextStyle(color: textDestino, fontSize: 0.055*rsp),
              items: <String>[
                'Selecciona o agrega', 
                'Direccion 1', 
                'Direccion 2', 
                'Direccion 3']
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
                  valueDestino = newValue;
                  selectedDestino=newValue;
                  if(newValue=='Selecciona o agrega'){
                    iconDestino=selection;
                    textDestino=colorTheme;
                  }else{iconDestino=check;}
                  print(valueDestino);
                });
              },
            ),
          ),
          FlatButton(padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            onPressed: ()=>_showDialog('Guardar nuevo destino'), child: add,
          )
        ],
      ),
    );
  }

  Widget contenedorIn_Out(){
    return Container( margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
      child: Row(
        children:[
          Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('De Entrada', style: TextStyle(fontSize: 0.05*rsp)),
              Container(width: 0.40*rsp, height: 0.12*rsp,decoration: styleContainer(context), margin: EdgeInsets.fromLTRB(0.07*rsp, 0.02*rsp, 0.0, 0.0),
                child: Container(margin: EdgeInsets.fromLTRB(0.04*rsp, 0.0, 0.0, 0.0),
                  child: DropdownButton<String>(
                    value: valueContIn, icon: iconContIn, iconSize: 40, elevation: 16,
                    style: TextStyle(color: textContIn, fontSize: 0.055*rsp),
                    items: <String>[
                      '0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30']
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
                        valueContIn = newValue;
                        selectedContIn=newValue;
                        if(newValue=='0'){
                          iconContIn=selection;
                          textContIn=colorTheme;
                        }else{iconContIn=check;}
                        print(valueDestino);
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('De Salida', style: TextStyle(fontSize: 0.05*rsp)),
              Container(width: 0.40*rsp, height: 0.12*rsp,decoration: styleContainer(context), margin: EdgeInsets.fromLTRB(0.07*rsp, 0.02*rsp, 0.0, 0.0),
                child: Container(margin: EdgeInsets.fromLTRB(0.04*rsp, 0.0, 0.0, 0.0),
                  child: DropdownButton<String>(
                    value: valueContOut, icon: iconContOut, iconSize: 40, elevation: 16,
                    style: TextStyle(color: textContOut, fontSize: 0.055*rsp),
                    items: <String>[
                      '0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30']
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
                        valueContOut = newValue;
                        selectedContOut=newValue;
                        if(newValue=='0'){
                          iconContOut=selection;
                          textContOut=colorTheme;
                        }else{iconContOut=check;}
                      });
                    },
                  ),
                ),
              ),
            ],
          )
        ]
      ),
    ); 
  }

  Widget notas(){
    return Container(margin: EdgeInsets.fromLTRB(0.04*rsp, 0.0, 0.04*rsp, 0.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(margin: EdgeInsets.fromLTRB(0.0, 0.02*rsp, 0.0, 0.0),
            child: Text('Notas del contenedor de entrada', style: TextStyle(fontSize: 0.05*rsp),)
          ),
          Container(decoration: styleContainer(context), margin: EdgeInsets.fromLTRB(0.0, 0.05*rsp, 0.0, 0.0),
          padding: EdgeInsets.fromLTRB(0.05*rsp, 0.0, 0.05*rsp, 0.0), height: 0.3*rsp,
            child: TextField(
              maxLines: null,
              style: TextStyle(
                fontSize: 0.05*rsp, height: 0.004*rsp, color: Colors.black                  
              ),
              keyboardType: TextInputType.multiline,
            ),
          ),
          Divider(height: 0.15*rsp, color: Colors.black45,),
          Container(
            child: Text('Notas del contenedor de salida', style: TextStyle(fontSize: 0.05*rsp),)
          ),
          Container(decoration: styleContainer(context), margin: EdgeInsets.fromLTRB(0.0, 0.05*rsp, 0.0, 0.0),
          padding: EdgeInsets.fromLTRB(0.05*rsp, 0.0, 0.05*rsp, 0.0), height: 0.3*rsp,
            child: TextField(
              maxLines: null,
              style: TextStyle(
                fontSize: 0.05*rsp, height: 0.004*rsp, color: Colors.black                  
              ),
              keyboardType: TextInputType.multiline,
            ),
          ) 
        ]
      ),
    );
  }
}