import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lojinha_alura/models/movel.dart';
import 'package:lojinha_alura/widgets/texto_detalhes.dart';

class CardDetalhes extends StatelessWidget {
  final Movel movel;

  CardDetalhes({required this.movel});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextoDetalhes(texto: movel.titulo, estilo: Theme.of(context).textTheme.headline1,),
          TextoDetalhes(texto: movel.descricao, estilo: null,),
          Container(
            margin: EdgeInsets.only(
              left: 16, right: 16, top: 16, bottom: 8
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('R\$ ${movel.preco}', style: Theme.of(context).textTheme.headline1,),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Comprar',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
