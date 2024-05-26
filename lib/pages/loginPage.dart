import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web/cadastroUsuario.dart';
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
  // bool _obscureText = true;

  // void _toggleobscureText() {
  //   setState(() {
  //     _obscureText = !_obscureText;
  //   });
  // }

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
                hint: 'Email or Phone Number',
                controller: TextEditingController(),
              ),
              const SizedBox(height: 20),
              EklTextFormField(
                title: 'Senha',
                hint: 'Password',
                controller: TextEditingController(),
              ),
              const SizedBox(height: 15),
              Container(
                child: InkWell(
                  mouseCursor: WidgetStateMouseCursor.clickable,
                  onTap: () {
                    //Abrir a tela de cadastrar nova senha...
                  },
                  child: const Text(
                    'Forgot Your Password ?',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 48,
                width: MediaQuery.of(context).size.width * 0.45,
                child: ElevatedButton(
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
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
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
                    'Dont have account ? Sing Up',
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
