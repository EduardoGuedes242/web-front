// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:web/widgets/button_widget.dart';
import 'package:web/widgets/input_widget.dart';

class SuportePage extends StatefulWidget {
  const SuportePage({super.key});

  @override
  State<SuportePage> createState() => _SuportePageState();
}

class _SuportePageState extends State<SuportePage> {
  TextEditingController descricaoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XFFFCE5E6),
      height: MediaQuery.sizeOf(context).height - 202,
      child: Column(
        children: [
          SizedBox(height: 16),
          EklTextFormField(
            title: 'Titulo *',
            hint: 'Duvida Financeiro',
            controller: descricaoController,
          ),
          SizedBox(height: 16),
          EklTextFormFieldMultLines(
            title: 'Descrição',
            hint:
                'Estou com duvidas sobre como cadastar Lembretes de pagamentos',
            controller: descricaoController,
          ),
          SizedBox(height: 16),
          Spacer(),
          EklButton(
            titulo: 'Solicitar Suporte',
            funcao: () {},
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
