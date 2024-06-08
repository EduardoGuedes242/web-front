import 'package:flutter/material.dart';
import 'package:web/repositories/cadUsers_repository.dart';
import 'package:web/widgets/button_widget.dart';
import 'package:web/widgets/input_widget.dart';

class CadastroUsuarios extends StatefulWidget {
  const CadastroUsuarios({super.key});

  @override
  State<CadastroUsuarios> createState() => _CadastroUsuariosState();
}

class _CadastroUsuariosState extends State<CadastroUsuarios> {
  final TextEditingController cadTenantController = TextEditingController();
  final TextEditingController cadNameController = TextEditingController();
  final TextEditingController cadEmailController = TextEditingController();
  final TextEditingController cadPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: const Color.fromRGBO(124, 77, 255, 1),
            height: 245, //MediaQuery.sizeOf(context).height *
            //0.4, //300, // Defina a altura da imagem
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
                child: ListView(
                  children: [
                    EklTextFormField(
                      title: 'Id',
                      hint: 'Digite o inquilino',
                      controller: cadTenantController,
                    ),
                    EklTextFormField(
                      title: 'Nome',
                      hint: 'Digite seu nome  ',
                      controller: cadNameController,
                      iconeEsquerda: Icon(Icons.person),
                    ),
                    EklTextFormField(
                      title: 'Email',
                      hint: 'Digite seu email',
                      controller: cadEmailController,
                      iconeEsquerda: Icon(Icons.email_outlined),
                    ),
                    EklTextFormField(
                      title: 'Senha',
                      hint: 'Digite uma senha',
                      controller: cadPasswordController,
                      obscureText: true,
                      optionShowPassword: true,
                      iconeDireita: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.visibility),
                      ),
                    ),
                    const SizedBox(height: 5),
                    EklButton2(
                      titulo: 'Cadastrar',
                      funcao: () {
                        CadUsersRepository().cadUsers(
                            tenantId: cadTenantController.text,
                            name: cadNameController.text,
                            email: cadEmailController.text,
                            password: cadPasswordController.text);
                      },
                    )
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
