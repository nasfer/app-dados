import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          title: Text('Dados'),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Daddos(),
      ),
    ),
  );
}

class Daddos extends StatefulWidget {
  const Daddos({Key? key}) : super(key: key);

  @override
  State<Daddos> createState() => _DaddosState();
}

class _DaddosState extends State<Daddos> {
  int numeroDadoEsquerdo = 2;
  int numeroDadoDireito = 6;

  void alterarFaceDosDados() {
    setState(() {
      numeroDadoEsquerdo = Random().nextInt(6) + 1;
      numeroDadoDireito = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                alterarFaceDosDados();
              },
              child: Image.asset('imagens/dado$numeroDadoEsquerdo.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                alterarFaceDosDados();
              },
              child: Image.asset('imagens/dado$numeroDadoDireito.png'),
            ),
          ),
        ],
      ),
    );
  }
}
