import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:seneca/presentation/providers/provider.dart';

class LoginScreen extends StatefulWidget  {
  const LoginScreen({super.key});
  @override
  State createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool viewPassword = true;

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<AppProvider>();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 77, 184),
      body: SingleChildScrollView(
        child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 80),
              Transform.scale(
                scale: 1.10,
                child: Image.asset("assets/images/SenecaLogo.png")
                ),
              const SizedBox(height: 20),
              TextField(
                cursorColor: Colors.white,
                controller: usernameController,
                decoration: InputDecoration
                (
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.15),
                  hintText: "Usuario/a",
                  hintStyle: const TextStyle
                  (
                    color: Colors.white
                  ),
                  enabledBorder: OutlineInputBorder
                  (
                    borderSide: const BorderSide
                    (
                      style: BorderStyle.solid,
                      color: Colors.white,
                      width: 2
                    ),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  focusedBorder: OutlineInputBorder
                  (
                    borderSide: const BorderSide
                    (
                      style: BorderStyle.solid,
                      color: Colors.white,
                      width: 2
                    ),
                    borderRadius: BorderRadius.circular(8)
                  )
                ),
              ),
              const SizedBox(height: 20),

              TextField(
                cursorColor: Colors.white,
                controller: passwordController,
                decoration: InputDecoration
                (
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.15),
                  hintText: "Contraseña",
                  hintStyle: const TextStyle
                  (
                    color: Colors.white
                  ),
                  enabledBorder: OutlineInputBorder
                  (
                    borderSide: const BorderSide
                    (
                      style: BorderStyle.solid,
                      color: Colors.white,
                      width: 2
                    ),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  focusedBorder: OutlineInputBorder
                  (
                    borderSide: const BorderSide
                    (
                      style: BorderStyle.solid,
                      color: Colors.white,
                      width: 2
                    ),
                    borderRadius: BorderRadius.circular(8.0)
                  ),
                  suffixIcon: SizedBox(
                    width: 55,
                    child: IconButton(
                      icon: const Icon(Icons.visibility_outlined),
                      color: Colors.white,
                      onPressed: () 
                      {
                        setState(() {
                          viewPassword = !viewPassword;
                        });
                      }
                    )
                  )
                ),
                obscureText: viewPassword,
              ),
              const SizedBox(height: 20),

              SizedBox(
                width: 400,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    if(provider.comprobarLogin(usernameController.text, passwordController.text)){
                      context.goNamed('home');
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(Colors.white),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)
                      )
                    )
                  ),
                  child: const Text('Entrar',
                  style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 31, 77, 188))),
                ),
              ),
              const SizedBox(height: 60),

              const Text("No recuerdo la contraseña", 
                style: TextStyle(
                  fontSize: 16, 
                  color: Colors.white, 
                  fontWeight: FontWeight.bold, 
                  decoration: TextDecoration.underline,
                  decorationColor:Colors.white,
                  decorationStyle: TextDecorationStyle.solid,
                  decorationThickness: 2.0
                )
              ),
              const SizedBox(height: 20),

              Transform.scale(
                scale: 0.50,
                child: Image.asset("assets/images/JuntaAndalucia.png")
                ),
              const SizedBox(height: 100),

              Container(
                margin: const EdgeInsetsDirectional.only(start: 300),
                child: const Text("v11.3.0", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                )
              )
            )

            ],
          ),
        ),
      ),
      )
    );
  }
}