import 'package:flutter/material.dart';
import 'package:web/widgets/button_widget.dart';
import 'package:web/widgets/input_widget.dart';

class NovaSenha extends StatefulWidget {
  const NovaSenha({super.key});

  @override
  State<NovaSenha> createState() => _NovaSenhaState();
}

class _NovaSenhaState extends State<NovaSenha> {
  TextEditingController emailRecuperController = TextEditingController();
  TextEditingController senhaRecuperController = TextEditingController();
  TextEditingController codigoVerificController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop([]);
          },
          icon: Icon(Icons.arrow_back_outlined),
        ),
      ),
      backgroundColor: Colors.deepPurpleAccent,
      body: Column(
        children: [
          Container(
            color: const Color.fromRGBO(124, 77, 255, 1),
            height: 255, //MediaQuery.sizeOf(context).height *
            //0.4, //300, // Defina a altura da imagem
            width: double.infinity,
            child: Image.asset(
              'assets/images/esqSenImg.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 50),
          Expanded(
            child: Container(
              height: MediaQuery.sizeOf(context).height * 0.6, //50,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  //topRight: Radius.circular(16),
                ),
              ),

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    EklTextFormField(
                      title: 'Email',
                      hint: 'Digite seu email',
                      controller: emailRecuperController,
                      iconeEsquerda: Icon(Icons.email_outlined),
                    ),
                    EklTextFormField(
                      title: '',
                      hint: 'Digite o código recebido nos email',
                      controller: codigoVerificController,
                    ),
                    Spacer(),
                    EklButton2(titulo: 'Next', funcao: () {}),
                    SizedBox(height: 45)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
