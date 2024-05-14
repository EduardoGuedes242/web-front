// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:web/common/dados.dart';
import 'package:web/widgets/button_widget.dart';
import 'package:web/widgets/input_widget.dart';

class LembretesPage extends StatefulWidget {
  const LembretesPage({super.key});

  @override
  State<LembretesPage> createState() => _LembretesPage();
}

class _LembretesPage extends State<LembretesPage> {
  TextEditingController descricaoController = TextEditingController();
  int receitaDespesa = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar Lembretes'),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            EklTextFormField(
              title: 'Descrição',
              hint: 'Pagar conta de internet',
              controller: descricaoController,
            ),
            SizedBox(height: 16),
            EklTextFormField(
              title: 'Valor R\$',
              hint: 'R\$ 104,90',
              controller: descricaoController,
            ),
            SizedBox(height: 16),
            EklTextFormField(
              title: 'Lembre-me no dia',
              hint: '10',
              controller: descricaoController,
              iconeDireita: IconButton(
                onPressed: () {},
                icon: Icon(
                  IconsaxPlusBold.calendar,
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      receitaDespesa = 0;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: 48,
                    width: MediaQuery.sizeOf(context).width * 0.4,
                    decoration: BoxDecoration(
                      color: receitaDespesa == 0 ? Color(0XFF6229EE) : null,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0XFF6229EE),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Despesa',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: receitaDespesa == 0 ? Colors.white : null),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      receitaDespesa = 1;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: 48,
                    width: MediaQuery.sizeOf(context).width * 0.4,
                    decoration: BoxDecoration(
                      color: receitaDespesa == 1 ? Color(0XFF6229EE) : null,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0XFF6229EE),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Receita',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: receitaDespesa == 1 ? Colors.white : null),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            EklTextFormFieldDropDown(
              title: 'Categoria',
              hint: '--SELECIONE--',
              listaOpcoes: receitaDespesa == 0
                  ? categoriasFinanceirasDepesas
                  : categoriasFinanceirasReceitas,
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
