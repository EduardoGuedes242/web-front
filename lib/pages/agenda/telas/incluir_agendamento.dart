import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:web/pages/agenda/telas/cadastro_clientes.dart';
import 'package:web/pages/agenda/telas/cadastro_servicos.dart';
import 'package:web/widgets/button_widget.dart';
import 'package:web/widgets/input_widget.dart';
import 'package:web/widgets/radio_widget.dart';

class IncluirAgendamentoPage extends StatefulWidget {
  const IncluirAgendamentoPage({super.key});

  @override
  State<IncluirAgendamentoPage> createState() => _IncluirAgendamentoPageState();
}

class _IncluirAgendamentoPageState extends State<IncluirAgendamentoPage> {
  TextEditingController controllerCliente = TextEditingController();
  TextEditingController controllerServico = TextEditingController();
  TextEditingController controllerData = TextEditingController();
  TextEditingController controllerHora = TextEditingController();
  TextEditingController controllerObservacao = TextEditingController();
  bool flPendente = false;
  bool flConcluido = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lançar agendamento'),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            EklTextFormField(
              title: 'Cliente',
              hint: 'Informe o nome ou celular',
              controller: controllerCliente,
              iconeDireita: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const CadastrarClientesPage(),
                    ),
                  );
                },
                icon: const Icon(
                  IconsaxPlusBroken.add,
                  size: 32,
                  color: Color(0XFF6229EE),
                ),
              ),
            ),
            const SizedBox(height: 16),
            EklTextFormField(
              title: 'Serviço',
              hint: 'Informe o serviço',
              controller: controllerServico,
              iconeDireita: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const CadastrarServicosPage(),
                    ),
                  );
                },
                icon: const Icon(
                  IconsaxPlusBroken.add,
                  size: 32,
                  color: Color(0XFF6229EE),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                EklTextFormField(
                  title: 'Data',
                  hint: '01/02/2024',
                  tamanho: MediaQuery.sizeOf(context).width * 0.45,
                  controller: controllerData,
                  iconeDireita: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      IconsaxPlusBold.calendar,
                    ),
                  ),
                ),
                EklTextFormField(
                  title: 'Hora',
                  hint: '09:00',
                  tamanho: MediaQuery.sizeOf(context).width * 0.35,
                  controller: controllerHora,
                  iconeDireita: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      IconsaxPlusBold.calendar,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            EklTextFormFieldMultLines(
              title: 'Observação',
              hint: 'Cliente chegou atrasada',
              controller: controllerObservacao,
            ),
            const SizedBox(height: 16),
            EklRadio(
              primeiroValue: flPendente,
              primeiroTitulo: 'Pendente',
              segundoValue: flConcluido,
              segundoTitulo: 'Confirmado ',
            ),
            EklRadio(
              primeiroValue: flPendente,
              primeiroTitulo: 'Realizado',
              segundoValue: flConcluido,
              segundoTitulo: 'Cancelado  ',
            ),
            const Spacer(),
            EklButton(
              titulo: 'Registrar',
              funcao: () {},
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
