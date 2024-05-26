import 'package:flutter/material.dart';
import 'package:web/widgets/input_widget.dart';

class CadastroUsuarios extends StatefulWidget {
  const CadastroUsuarios({super.key});

  @override
  State<CadastroUsuarios> createState() => _CadastroUsuariosState();
}

class _CadastroUsuariosState extends State<CadastroUsuarios> {
  final TextEditingController cadUsuarioController = TextEditingController();
  final TextEditingController cadSenhaController = TextEditingController();
  final TextEditingController cadSenhaConfirmaController =
      TextEditingController();

  // bool _obscureTextSenha = true;
  // bool _obscureTextSenhaConfirma = true;

  // void _toggleObscureTextSenha() {
  //   setState(() {
  //     _obscureTextSenha = !_obscureTextSenha;
  //   });
  // }

  // void _toggleObscureTextSenhaConfirma() {
  //   setState(() {
  //     _obscureTextSenhaConfirma = !_obscureTextSenhaConfirma;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/cadUsuImg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 300, // Defina a altura da imagem
              width: double.infinity,
              child: Image.asset(
                'assets/images/cadUsuImg.png',
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Container(
                height: 50, //MediaQuery.sizeOf(context).height * 0.4,
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
                        title: 'Email',
                        hint: 'Digite seu email',
                        controller: cadUsuarioController,
                        //obscureText: false,
                        //toggleObscureText: () {},
                      ),
                      EklTextFormField(
                        title: 'Senha',
                        hint: 'Digite uma senha',
                        controller: cadSenhaController,
                        //obscureText: _obscureTextSenha,
                        //toggleObscureText: _toggleObscureTextSenha,
                      ),
                      EklTextFormField(
                        title: 'Confirme a Senha',
                        hint: 'Digite a senha novamente',
                        controller: cadSenhaConfirmaController,
                        //obscureText: _obscureTextSenhaConfirma,
                        //toggleObscureText: _toggleObscureTextSenhaConfirma,
                      ),
                    ],
                  ),
                ),
              ),
            ),
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
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
