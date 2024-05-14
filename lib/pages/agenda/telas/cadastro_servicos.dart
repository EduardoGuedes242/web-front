// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:web/widgets/button_widget.dart';
import 'package:web/widgets/input_widget.dart';

class CadastrarServicosPage extends StatefulWidget {
  const CadastrarServicosPage({super.key});

  @override
  State<CadastrarServicosPage> createState() => _CadastrarServicosPageState();
}

class _CadastrarServicosPageState extends State<CadastrarServicosPage> {
  TextEditingController descricaoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar Serviços'),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            EklTextFormField(
              title: 'Descrição *',
              hint: 'Limpeza Facial',
              controller: descricaoController,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                EklTextFormField(
                  title: 'Tempo Médio',
                  hint: '09:30',
                  controller: descricaoController,
                  tamanho: MediaQuery.sizeOf(context).width * 0.4,
                  iconeDireita: IconButton(
                    onPressed: () {},
                    icon: Icon(IconsaxPlusBroken.timer_1),
                  ),
                ),
                EklTextFormField(
                  title: 'Valor de Venda',
                  hint: 'R\$ 307,90',
                  controller: descricaoController,
                  tamanho: MediaQuery.sizeOf(context).width * 0.4,
                ),
              ],
            ),
            SizedBox(height: 16),
            EklTextFormFieldMultLines(
              title: 'Observação',
              hint: 'Este produto é um cronograma completo de limpeza facial',
              controller: descricaoController,
            ),
            Spacer(),
            EklButton(
              titulo: 'Cadastrar',
              funcao: () {},
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
