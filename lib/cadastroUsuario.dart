import 'package:flutter/material.dart';
import 'package:web/widgets/input_widget.dart';

class CadastroUsuarios extends StatefulWidget {
  const CadastroUsuarios({super.key});

  @override
  State<CadastroUsuarios> createState() => _CadastroUsuariosState();
}

class _CadastroUsuariosState extends State<CadastroUsuarios> {
  final TextEditingController cadNomeController = TextEditingController();
  final TextEditingController cadUsuarioController = TextEditingController();
  final TextEditingController cadSenhaController = TextEditingController();
  final TextEditingController cadSenhaConfirmaController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.deepPurpleAccent,
            height: MediaQuery.sizeOf(context).height *
                0.4, //300, // Defina a altura da imagem
            width: double.infinity,
            child: Image.asset(
              'assets/images/cadUsuImg.png',
              fit: BoxFit.cover,
            ),
          ),
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
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    EklTextFormField(
                      title: 'Nome',
                      hint: 'Digite seu nome  ',
                      controller: cadNomeController,
                    ),
                    EklTextFormField(
                      title: 'Email',
                      hint: 'Digite seu email',
                      controller: cadUsuarioController,
                    ),
                    EklTextFormField(
                      title: 'Senha',
                      hint: 'Digite uma senha',
                      controller: cadSenhaController,
                      obscureText: true,
                      optionShowPassword: true,
                      iconeDireita: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.visibility),
                      ),
                    ),
                    EklTextFormField(
                      title: 'Confirme a Senha',
                      hint: 'Digite a senha novamente',
                      controller: cadSenhaConfirmaController,
                      obscureText: true,
                      optionShowPassword: true,
                      iconeDireita: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.visibility),
                      ),
                    ),
                    const SizedBox(height: 2),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(
                              const Color.fromARGB(
                                  255, 98, 41, 238)), // Cor de fundo do botão
                          iconColor: WidgetStateProperty.all<Color>(
                              const Color.fromARGB(255, 98, 41, 238)),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          )),
                      onPressed: () {},
                      child: const Text(
                        'Cadastrar',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // ElevatedButton(
          //   style: ButtonStyle(
          //       backgroundColor: WidgetStateProperty.all<Color>(
          //           const Color.fromARGB(
          //               255, 98, 41, 238)), // Cor de fundo do botão
          //       iconColor: WidgetStateProperty.all<Color>(
          //           const Color.fromARGB(255, 98, 41, 238)),
          //       shape: WidgetStatePropertyAll(
          //         RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(15.0),
          //         ),
          //       )),
          //   onPressed: () {},
          //   child: const Text(
          //     'Cadastrar',
          //     style: TextStyle(
          //       color: Colors.white,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
