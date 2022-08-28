import 'package:flutter/material.dart';

class InputsDeTextos {
  String? valorDelCampo;

  String? hintText;

  String? labelText;

  String? validationMsg;

  Icon? iconoDeFondo;
  Icon? iconoInicial;

  String? helperText;
  InputsDeTextos(
      {required String this.hintText,
      required this.labelText,
      required String this.valorDelCampo,
      this.validationMsg,
      this.helperText,
      this.iconoDeFondo,
      this.iconoInicial});

  crearInputDeTextoMayuscula() {
    return TextFormField(
      validator: (value) {
        if (value == "") {
          return validationMsg;
        }

        return null;
      },
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: hintText,
          labelText: labelText,
          suffixIcon: iconoDeFondo,
          icon: iconoInicial),
      onChanged: (value) => valorDelCampo = value,
    );
  }

  crearInputDeTextoMinuscula() {
    return TextFormField(
      validator: (value) {
        if (value == "") {
          return validationMsg;
        }

        return null;
      },
      textCapitalization: TextCapitalization.none,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: hintText,
          labelText: labelText,
          suffixIcon: iconoDeFondo,
          icon: iconoInicial),
      onChanged: (value) => valorDelCampo = value,
    );
  }

  crearInputNumerico() {
    return TextFormField(
      validator: (value) {
        if (value == "") {
          return "Este campo no puede estar vacio";
        }

        return null;
      },
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: hintText,
          labelText: labelText,
          suffixIcon: iconoDeFondo,
          icon: iconoInicial),
      onChanged: (value) => valorDelCampo = value,
    );
  }

  crearInputCorreo() {
    return TextFormField(
      validator: (value) {
        if (value == "") {
          return "Este campo no puede estar vacio";
        }

        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: hintText,
          helperText: helperText,
          labelText: labelText,
          suffixIcon: Icon(Icons.mail),
          icon: Icon(Icons.account_circle)),
      onChanged: (value) => valorDelCampo = value,
    );
  }

  Widget crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          suffixIcon: iconoDeFondo,
          icon: iconoInicial),
      onChanged: (valor) {
        valorDelCampo = valor;
      },
    );
  }
}
