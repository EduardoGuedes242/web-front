import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web/pages/access/cadastroUsuario.dart';
import 'package:web/pages/access/esqueceuSenha.dart';
import 'package:web/pages/home_page.dart';
import 'package:web/widgets/button_widget.dart';
import 'package:web/widgets/input_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  final TextEditingController cpfCnpjContreller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: const Color.fromARGB(255, 98, 41, 238),
      //   centerTitle: true,
      //   title: const Text(
      //     'AgendaVix',
      //     style: TextStyle(
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/backgrounBeStrong.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EklTextFormField(
                title: 'Login',
                hint: 'Email ou Telefone',
                controller: usuarioController,
                iconeEsquerda: Icon(Icons.person),
              ),
              const SizedBox(height: 20),
              EklTextFormField(
                title: 'Senha',
                hint: 'Digite sua senha',
                controller: senhaController,
                obscureText: true,
                optionShowPassword: true,
                iconeDireita: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.visibility),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                child: InkWell(
                  mouseCursor: WidgetStateMouseCursor.clickable,
                  onTap: () {
                    //Abrir a tela de cadastrar nova senha...
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NovaSenha()),
                    );
                  },
                  child: const Text(
                    'Esqueceu a senha ?',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              EklButton2(
                titulo: 'Login',
                funcao: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 15),
              Container(
                child: InkWell(
                  mouseCursor: WidgetStateMouseCursor.clickable,
                  onTap: () {
                    //Abrir tela de cadastro de usuarios...
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CadastroUsuarios()),
                    );
                  },
                  child: const Text(
                    'Não tem conta ? Clique aqui',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
