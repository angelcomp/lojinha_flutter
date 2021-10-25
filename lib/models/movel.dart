
class Movel {
  late String titulo;
  late int preco;
  late String foto;
  late String descricao;

  Movel({required this.titulo, required this.preco, required this.foto, required this.descricao});
  
  Movel.fromJson(Map<String, dynamic> json) {
    titulo = json['titulo'];
    preco = json['preco'];
    foto = json['foto'];
    descricao = json['descricao'];
  }
}