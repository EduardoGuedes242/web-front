// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:web/common/dados.dart';
import 'package:web/widgets/button_widget.dart';
import 'package:web/widgets/input_widget.dart';

class RegistrarSaidaPage extends StatefulWidget {
  const RegistrarSaidaPage({super.key});

  @override
  State<RegistrarSaidaPage> createState() => _RegistrarSaidaPageState();
}

class _RegistrarSaidaPageState extends State<RegistrarSaidaPage> {
  TextEditingController descricaoController = TextEditingController();
  TextEditingController valorController = TextEditingController();
  TextEditingController dataController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar Despesa'),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            EklTextFormField(
              title: 'Descrição',
              hint: 'Compra de café',
              controller: descricaoController,
            ),
            SizedBox(height: 16),
            EklTextFormField(
              title: 'Valor R\$',
              hint: 'R\$ 4,94',
              controller: valorController,
            ),
            SizedBox(height: 16),
            EklTextFormField(
              title: 'Data',
              hint: '14/02/2024',
              controller: dataController,
              iconeDireita: IconButton(
                onPressed: () {},
                icon: Icon(
                  IconsaxPlusBold.calendar,
                ),
              ),
            ),
            SizedBox(height: 16),
            EklTextFormFieldDropDown(
              title: 'Forma de Pagamento',
              hint: '--SELECIONE--',
              listaOpcoes: formasPagamento,
            ),
            SizedBox(height: 16),
            EklTextFormFieldDropDown(
              title: 'Categoria',
              hint: '--SELECIONE--',
              listaOpcoes: categoriasFinanceirasDepesas,
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
