import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lojinha_alura/models/movel.dart';
import 'package:lojinha_alura/widgets/appbar_customizada.dart';
import 'package:lojinha_alura/widgets/card_detalhes.dart';

class Detalhes extends StatefulWidget {
  final Movel movel;

  Detalhes({required this.movel});

  _DetalhesSate createState() => _DetalhesSate();
}

class _DetalhesSate extends State<Detalhes> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image:
                  AssetImage('utilidades/assets/imagens/${widget.movel.foto}'),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBarCustomizada(
            titulo: widget.movel.titulo, ehPaginaCarrinho: false),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.all(16),
            height: 220,
            child: CardDetalhes(
              movel: widget.movel,
              atualizaPagina: atualiza,
            ),
          ),
        ),
      ),
    );
  }

  atualiza() {
    setState(() {});
  }
}
