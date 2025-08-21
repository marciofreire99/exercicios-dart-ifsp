class Laptop {
  int id;
  String nome;
  int ram;
  double clockCpu;

  Laptop(this.id, this.nome, this.ram, this.clockCpu);

  void mostrarDetalhes() {
    print("ID: $id | Nome: $nome | RAM: ${ram}GB | CPU: ${clockCpu}GHz");
  }
}

void main() {
  Laptop laptop1 = Laptop(1, "Dell Inspiron", 8, 2.5);
  Laptop laptop2 = Laptop(2, "Lenovo ThinkPad", 16, 3.2);
  Laptop laptop3 = Laptop(3, "MacBook Pro", 32, 3.6);

  laptop1.mostrarDetalhes();
  laptop2.mostrarDetalhes();
  laptop3.mostrarDetalhes();
}
