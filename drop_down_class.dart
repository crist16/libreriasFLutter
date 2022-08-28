import 'package:flutter/material.dart';

class DropdowsInputs {
  var valorDelDropdow;
  List<String>? listaDeOpciones;

  DropdowsInputs(
      {required this.valorDelDropdow, required this.listaDeOpciones});

  List<DropdownMenuItem<String>> getOpcionesDropDown() {
    List<DropdownMenuItem<String>> lista = [];
    listaDeOpciones?.forEach((element) {
      lista.add(DropdownMenuItem(
        child: Text(element),
        value: element,
      ));
    });
    return lista;
  }

  crearDropDown(void stateCallFunction(Object? opciones), Icon icono) {
    return Row(
      children: [
        icono,
        SizedBox(width: 30.0), // Para separar vertical
        Expanded(
          child: DropdownButton(
              items: getOpcionesDropDown(),
              value: valorDelDropdow,
              onChanged: (opt) {
                stateCallFunction(opt);
              }),
        ),
      ],
    );
  }

  /*
  

  
    ejemplo de stateCallFunction 
    void misDatosState(opt) {
    setState(() {
      _opcionDelDropDown = opt.toString();
    });
  }

  
  */
}
