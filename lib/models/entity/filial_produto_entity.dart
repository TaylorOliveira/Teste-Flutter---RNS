import 'file:///C:/Users/crp/Downloads/teste_flutter-master/teste_flutter-master/lib/models/entity/filial_entity.dart';
import 'package:teste_salcisne/models/entity/produto_entity.dart';

class FilialProduto {
  Produto produto;
  Filial filial;
  int quantidade;
  DateTime dataTransferencia;

  FilialProduto({
    this.produto,
    this.filial,
    this.quantidade,
    this.dataTransferencia,
  });

  factory FilialProduto.fromJson(Map<String, dynamic> json) => FilialProduto(
    produto: Produto.fromJson(json["product"]),
    filial: Filial.fromJson(json["branch"]),
    quantidade: json["quantity"],
  );

  Map<String, dynamic> toJson() => {
    "produto": produto,
    "filial": filial,
    "quantidade": quantidade,
    "dataTransferencia": dataTransferencia,
  };
}
