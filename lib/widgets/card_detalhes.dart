import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lojinha_alura/main.dart';
import 'package:lojinha_alura/models/item_carrinho.dart';
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
                  onPressed: () {
                    _adicionarItemCarrinho(
                      ItemCarrinho(movel: movel, quantidade: 1)
                    );
                  },
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

  _adicionarItemCarrinho(ItemCarrinho item) {
    Inicio.itensCarrinho.add(item);
  }
}
