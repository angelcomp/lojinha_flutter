

import 'package:flutter/cupertino.dart';
import 'package:lojinha_alura/models/movel.dart';
import 'package:lojinha_alura/widgets/imagem_elemento_grid_produtos.dart';

class ElementoGridProdutos extends StatelessWidget {

  late final Movel movel;

  ElementoGridProdutos({required this.movel});

  @override
  Widget build(BuildContext context) {
      return ImagemElementoGridProdutos(imagem: movel.foto);
  }

}