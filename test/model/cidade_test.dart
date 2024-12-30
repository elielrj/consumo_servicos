import 'package:consumo_servicos/model/endereco/bairro/cidade/cidade.dart';
import 'package:consumo_servicos/model/endereco/bairro/cidade/estado/estado.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final estado = Estado('Santa Catarina', 'SC');
  final cidade = Cidade('Tubarão', estado);

  test("Espera se um objeto do tipo cidade.", () {
    expect(
      cidade.toString(),
      'Tubarão, Santa Catarina - SC',
    );
  });
}
