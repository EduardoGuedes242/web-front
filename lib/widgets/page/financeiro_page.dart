// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:web/db/helper/usuario_helper.dart';
import 'package:web/widgets/appbar_widget.dart';
import 'package:web/widgets/button_widget.dart';
import 'package:web/widgets/input_widget.dart';

class FinanceiroPage extends StatefulWidget {
  const FinanceiroPage({
    super.key,
  });

  @override
  State<FinanceiroPage> createState() => _FinanceiroPageState();
}

class _FinanceiroPageState extends State<FinanceiroPage> {
  final TextEditingController descricaoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.sizeOf(context).height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: const [
              Color(0XFFFCE5E6),
              Color(0XFFDDEEF8),
            ],
          ),
        ),
        child: ListView(
          children: [
            EklAppBar(iconBack: true),
            SizedBox(height: 10),
            EklTextFormField(
              title: 'Dercrição',
              hint: 'Informe a descrição da movimentação',
              controller: descricaoController,
            ),
            SizedBox(height: 10),
            EklTextFormField(
              title: 'Observação',
              hint: 'Informe uma observação caso queira',
              controller: descricaoController,
            ),
            EklButton(
              titulo: 'Cadastrar',
              funcao: () async {
                int idInserido = await UsuarioHelper.inserirUsuario(
                  nome: 'Bruno',
                  login: 'bruno',
                  senha: '123',
                );

                print('Categoria inserida com o ID: $idInserido');
              },
            ),
          ],
        ),
      ),
    );
  }
}
