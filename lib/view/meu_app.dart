import 'package:consumo_servicos/controller/meu_app_controller.dart';
import 'package:flutter/material.dart';

class MeuApp extends StatefulWidget {
  const MeuApp({super.key});

  @override
  State<MeuApp> createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
  String _resultado = "Resultado";
  final MeuAppControler _controlerMeuApp = MeuAppControler();

  Future<void> _recuperarCep() async {
    await _controlerMeuApp.bucarCepNoServicoViaCep();
    setState(() => _resultado = _controlerMeuApp.resultado());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Consumo de serviço web"),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite o CEP: ex 01146-751",
              ),
              maxLength: 9,
              style: TextStyle(
                fontSize: 20,
              ),
              controller: _controlerMeuApp.textEditingController,
            ),
            ElevatedButton(
              onPressed: _recuperarCep,
              child: Text("Clique aqui"),
            ),
            Text(_resultado),
          ],
        ),
      ),
    );
  }
}
