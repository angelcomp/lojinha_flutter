import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lojinha_alura/main.dart';
import 'package:lojinha_alura/models/item_carrinho.dart';
import 'package:lojinha_alura/models/movel.dart';

class ListaCarrinho extends StatelessWidget {
  final List<ItemCarrinho> carrinho = Inicio.itensCarrinho;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int indice) {
        ItemCarrinho item = carrinho[indice];
        Movel movel = item.movel;

        return Container(
          margin: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 8,
          ),
          child: Card(
            clipBehavior: Clip.hardEdge,
            child: Row(
              children: [
                Image(
                  height: 90,
                  image: AssetImage('utilidades/assets/imagens/${movel.foto}'),
                ),
                Expanded(
                  child: Container(
                    height: 90,
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(movel.titulo),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('${movel.preco}'),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () => _aumentarQuantidade(item),
                                  child: Container(
                                    margin: EdgeInsets.all(8),
                                    child: const Icon(
                                      Icons.add,
                                      size: 14,
                                    ),
                                  ),
                                ),
                                Text('${item.quantidade}'),
                                GestureDetector(
                                  onTap: () => _diminuirQuantidade(item),
                                  child: Container(
                                    margin: EdgeInsets.all(8),
                                    child: const Icon(
                                      Icons.remove,
                                      size: 14,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: carrinho.length,
    );
  }

  _aumentarQuantidade(ItemCarrinho item) {
    item.quantidade++;
  }
  _diminuirQuantidade(ItemCarrinho item) {
    item.quantidade--;
  }
}
