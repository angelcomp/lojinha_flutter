import 'package:flutter/cupertino.dart';
import 'package:lojinha_alura/models/movel.dart';
import 'package:lojinha_alura/widgets/elemento_grid_produtos.dart';

class GridProdutos extends StatelessWidget {
  final moveis;

  GridProdutos({this.moveis});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: moveis.length,
      itemBuilder: (BuildContext context, int index) {
        final movel = Movel.fromJson(moveis[index]);
        return ElementoGridProdutos(movel: movel,);
      },
    );
  }
}
