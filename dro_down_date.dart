import 'package:flutter/material.dart';

class DropDownDate {
  DropDownDate();

  crearFecha(BuildContext context, TextEditingController? textDateController,
      String hintTex, void dateFunctionState(DateTime? picked),
      [Icon? lastIcon, Icon? initIcon, Locale? localizacion]) {
    return TextFormField(
        controller: textDateController,
        enableInteractiveSelection: false,
        textCapitalization: TextCapitalization.characters,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            hintText: hintTex,
            suffixIcon: lastIcon,
            icon: initIcon),
        onTap: (() {
          FocusScope.of(context).requestFocus(new FocusNode());
          selectDate(context, dateFunctionState, localizacion);
        }));
  }

  selectDate(BuildContext context, void dateFunctionState(DateTime? picked),
      [Locale? localizacion]) async {
    DateTime? picked = await showDatePicker(
        context: context,
        locale: localizacion,
        initialDate: new DateTime(2000),
        firstDate: new DateTime(1991),
        lastDate: new DateTime(2060));
    if (picked != null) {
      dateFunctionState(picked);
    }
  }
}
