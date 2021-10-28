
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextoDetalhes extends StatelessWidget {

  final TextStyle? estilo;
  final String texto;

  TextoDetalhes({required this.texto, required this.estilo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 10),
      child: _estilizarTexto(texto),
    );
  }

  _estilizarTexto(texto) {
    if(estilo != null) {
      return Text(texto, style: estilo,);
    }
    return Text(texto);
  }
}