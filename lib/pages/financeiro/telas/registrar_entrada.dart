// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:web/common/dados.dart';
import 'package:web/widgets/button_widget.dart';
import 'package:web/widgets/input_widget.dart';

class RegistrarEntradaPage extends StatefulWidget {
  const RegistrarEntradaPage({super.key});

  @override
  State<RegistrarEntradaPage> createState() => _RegistrarEntradaPageState();
}

class _RegistrarEntradaPageState extends State<RegistrarEntradaPage> {
  TextEditingController descricaoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar Receitas'),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            EklTextFormField(
              title: 'Descrição',
              hint: 'Recebimento de aluguel',
              controller: descricaoController,
            ),
            SizedBox(height: 16),
            EklTextFormField(
              title: 'Valor R\$',
              hint: 'R\$ 4,94',
              controller: descricaoController,
            ),
            SizedBox(height: 16),
            EklTextFormField(
              title: 'Data',
              hint: '14/02/2024',
              controller: descricaoController,
              iconeDireita: IconButton(
                onPressed: () {},
                icon: Icon(
                  IconsaxPlusBold.calendar,
                ),
              ),
            ),
            SizedBox(height: 16),
            EklTextFormFieldDropDown(
              title: 'Forma de Recebimento',
              hint: '--SELECIONE--',
              listaOpcoes: formasPagamento,
            ),
            SizedBox(height: 16),
            EklTextFormFieldDropDown(
              title: 'Categoria',
              hint: '--SELECIONE--',
              listaOpcoes: categoriasFinanceirasReceitas,
            ),
            Spacer(),
            EklButton(
              titulo: 'Registrar',
              funcao: () {},
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
