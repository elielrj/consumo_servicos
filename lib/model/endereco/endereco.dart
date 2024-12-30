import 'package:consumo_servicos/model/endereco/bairro/bairro.dart';
import 'package:consumo_servicos/model/endereco/cep.dart';

class Endereco {
  Cep _cep;
  Bairro _bairro;
  String _logradouro;
  String _complemento;

  Endereco(this._cep, this._bairro, this._logradouro, this._complemento);

  static Endereco EnderecoFactory(Map<String, dynamic> endereco) {
    return Endereco(
      Cep.CepFactory(endereco),
      Bairro.BairroFactory(endereco),
      endereco['logradouro'],
      endereco['complemento'],
    );
  }

  @override
  String toString() {
    return "Rua $_logradouro, Número $_complemento\n"
        "${_bairro.toString()}\n"
        "CEP $_cep";
  }
}
