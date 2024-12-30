import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../model/endereco/endereco.dart';

class MeuAppControler {
  late Endereco _endereco;
  final TextEditingController _textEditingController = TextEditingController();

  Future<void> bucarCepNoServicoViaCep() async {
    http.Response response = await http.get(_contruirUrl());
    Map<String, dynamic> enderecoEmFormatoMap = json.decode(response.body);
    _endereco = _contruirObjetoEndereco(enderecoEmFormatoMap);
  }

  Uri _contruirUrl() {
    String cep = _textEditingController.text;
    return Uri(
      scheme: "https",
      host: "viacep.com.br",
      path: "/ws/$cep/json/",
    );
  }

  Endereco _contruirObjetoEndereco(Map<String, dynamic> enderecoMap) {
    return Endereco.EnderecoFactory(enderecoMap);
  }

  String resultado() {
    return _endereco.toString();
  }

  TextEditingController get textEditingController => _textEditingController;
}
