import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lojinha_alura/main.dart';
import 'package:lojinha_alura/models/item_carrinho.dart';
import 'package:lojinha_alura/models/movel.dart';
import 'package:lojinha_alura/widgets/texto_detalhes.dart';

class CardDetalhes extends StatelessWidget {
  final Movel movel;
  final Function atualizaPagina;

  CardDetalhes({required this.movel, required this.atualizaPagina});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextoDetalhes(
            texto: movel.titulo,
            estilo: Theme.of(context).textTheme.headline1,
          ),
          TextoDetalhes(
            texto: movel.descricao,
            estilo: null,
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'R\$ ${movel.preco}',
                  style: Theme.of(context).textTheme.headline1,
                ),
                ElevatedButton(
                  onPressed: () {
                    _verificarListaCarrinho(
                      Inicio.itensCarrinho,
                      ItemCarrinho(movel: movel, quantidade: 1),
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

  void _adicionarItemCarrinho(ItemCarrinho item) {
    Inicio.itensCarrinho.add(item);
    atualizaPagina();
  }

  void _verificarListaCarrinho(List<ItemCarrinho> lista, ItemCarrinho item) {
    int indiceMovel = lista.indexWhere((element) => item.movel == movel);

    if (indiceMovel >= 0) {
      lista[indiceMovel].quantidade = lista[indiceMovel].quantidade + 1;
    } else {
      _adicionarItemCarrinho(item);
    }
  }
}
