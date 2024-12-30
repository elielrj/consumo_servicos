import 'package:consumo_servicos/controller/meu_app_controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final controler = MeuAppControler();
  final resultadoEsperadoParaCep88701050 = 'Rua Coronel Cabral, Número até 510/511\n'
      'Centro, Tubarão, Santa Catarina - SC\n'
      'CEP 88701-050';

  test("Espera ober um endereco:\n$resultadoEsperadoParaCep88701050", () async {
    /// Adiciona um CEP específico
    controler.textEditingController.text = '88701050';

    /// Busca o CEP
    await controler.bucarCepNoServicoViaCep();

    ///Busca o resultado em String
    var resultadoObtido = controler.resultado();

    expect(resultadoObtido, resultadoEsperadoParaCep88701050);
  });
}
