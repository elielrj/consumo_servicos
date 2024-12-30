import 'package:consumo_servicos/model/endereco/cep.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final cep = Cep("88701050");

  test("O CEP deve ser 88701050", () {
    expect(cep.toString(), "88701050");
  });
}
