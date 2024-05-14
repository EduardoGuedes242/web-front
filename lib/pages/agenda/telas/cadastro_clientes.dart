// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:web/widgets/button_widget.dart';
import 'package:web/widgets/input_widget.dart';

class CadastrarClientesPage extends StatefulWidget {
  const CadastrarClientesPage({super.key});

  @override
  State<CadastrarClientesPage> createState() => _CadastrarClientesPageState();
}

class _CadastrarClientesPageState extends State<CadastrarClientesPage> {
  TextEditingController descricaoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar Clientes'),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            EklTextFormField(
              title: 'Nome e Sobrenome',
              hint: 'Maria de souza',
              controller: descricaoController,
            ),
            SizedBox(height: 16),
            EklTextFormField(
              title: 'CPF',
              hint: '000.000.000-00',
              controller: descricaoController,
            ),
            SizedBox(height: 16),
            EklTextFormField(
              title: 'Celular',
              hint: '(00) 0.00000-0000',
              controller: descricaoController,
            ),
            SizedBox(height: 16),
            EklTextFormField(
              title: 'Instagram',
              hint: '@instagram',
              controller: descricaoController,
            ),
            SizedBox(height: 16),
            EklTextFormFieldMultLines(
              title: 'Observação',
              hint: 'Preferencia de atendimento as 14:00',
              controller: descricaoController,
            ),
            Spacer(),
            EklButton(
              titulo: 'Cadastrar',
              funcao: () {},
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
