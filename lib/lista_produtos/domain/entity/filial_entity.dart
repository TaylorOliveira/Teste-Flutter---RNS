class Filial {
  String nome;
  String codigo;

  Filial({
    this.nome,
    this.codigo,
  });

  factory Filial.fromJson(Map<String, dynamic> json) => Filial(
    nome: json["name"],
    codigo: json["code"],
  );

  Map<String, dynamic> toJson() => {
    "nome": nome,
    "codigo": codigo,
  };
}
