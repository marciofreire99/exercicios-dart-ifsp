class Laptop {
  int id;
  String nome;
  int ram;
  double clockCpu;

  Laptop(this.id, this.nome, this.ram, this.clockCpu);

  Laptop.internet(this.id)
      : nome = "Laptop Internet",
        ram = 4,
        clockCpu = 1.8;

  Laptop.office(this.id)
      : nome = "Laptop Escritório",
        ram = 8,
        clockCpu = 2.5;

  Laptop.programacao(this.id)
      : nome = "Laptop Programação",
        ram = 16,
        clockCpu = 3.2;

  void mostrarDetalhes() {
    print("ID: $id | Nome: $nome | RAM: ${ram}GB | CPU: ${clockCpu}GHz");
  }
}

void main() {
  Laptop laptopInternet = Laptop.internet(1);
  Laptop laptopOffice = Laptop.office(2);
  Laptop laptopProgramacao = Laptop.programacao(3);

  laptopInternet.mostrarDetalhes();
  laptopOffice.mostrarDetalhes();
  laptopProgramacao.mostrarDetalhes();
}
