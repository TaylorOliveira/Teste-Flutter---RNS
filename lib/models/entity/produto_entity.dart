class Produto {
  String nome;
  String codigo;
  int quantidade;

  Produto({
    this.nome,
    this.codigo,
    this.quantidade,
  });

  factory Produto.fromJson(Map<String, dynamic> json) => Produto(
        nome: json["name"],
        codigo: json["code"],
        quantidade: json["stockQuantity"],
      );

  Map<String, dynamic> toJson() => {
        "nome": nome,
        "codigo": codigo,
        "quantidade": quantidade,
      };
}
