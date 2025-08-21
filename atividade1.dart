void main() {
  var nomeEquipamento = "Impressora 3D";
  String local = "Lab de Protótipos";
  dynamic patrimonio = 12345;

  patrimonio = "12345-A";

  print("Nome do equipamento: $nomeEquipamento");
  print("Local: $local");
  print("Patrimônio: $patrimonio");

  print("nomeEquipamento é String? ${nomeEquipamento is String}");
  print("local é String? ${local is String}");
  print("patrimonio é String? ${patrimonio is String}");
  print("patrimonio é int? ${patrimonio is int}");
}
