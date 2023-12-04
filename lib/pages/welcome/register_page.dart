import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:colocfind/pages/welcome/widgets/floating_label_input.dart';
import 'package:colocfind/pages/welcome/steptwo_page.dart';
import 'package:colocfind/pages/welcome/login_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/retouch-koz.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            color: const Color(0xAA000000),
          ),
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              height: MediaQuery.of(context).size.height - 50,
              width: double.infinity,
              //color: const Color.fromARGB(170, 247, 246, 246),
              // ignore: sized_box_for_whitespace),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      FadeInUp(
                        duration: const Duration(milliseconds: 1000),
                        child: const Text(
                          "Inscription",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1200),
                        child: Text(
                          "Créer un compte, c'est gratuit",
                          style:
                              TextStyle(fontSize: 15, color: Colors.grey[700]),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: [
                          Expanded(
                            child: FadeInUp(
                              duration: const Duration(milliseconds: 1200),
                              child: const FloatingLabelInput(
                                label: "Name",
                                keyboardType: TextInputType.text,
                                textColor: Colors.black,
                                width: 300,
                                height: 50,
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: FadeInUp(
                              duration: const Duration(milliseconds: 1300),
                              child: const FloatingLabelInput(
                                label: "Surname",
                                obscureText: true,
                                textColor: Colors.black,
                                width: 300,
                                height: 50,
                              ),
                            ),
                          ),
                        ],
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1300),
                        child: const FloatingLabelInput(
                          label: "E-mail",
                          obscureText: true,
                          textColor: Colors.black,
                          width: 300,
                          height: 50,
                        ),
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1300),
                        child: const FloatingLabelInput(
                          label: "Mot de passe",
                          obscureText: true,
                          textColor: Colors.black,
                          width: 300,
                          height: 50,
                        ),
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1400),
                        child: const FloatingLabelInput(
                          label: "Confirmer le mot de passe",
                          obscureText: true,
                          textColor: Colors.black,
                          width: 300,
                          height: 50,
                        ),
                      ),
                    ],
                  ),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1500),
                    child: Container(
                      padding: const EdgeInsets.only(top: 3, left: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: const Border(
                          bottom: BorderSide(color: Colors.black),
                          top: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                        ),
                      ),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          // Naviguer vers la page StepTwoPage
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const StepTwoPage(),
                            ),
                          );
                        },
                        color: Colors.greenAccent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Text(
                          "Suivant",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1600),
                    child: GestureDetector(
                      onTap: () {
                        // Naviguer vers la page LoginPage
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Vous avez déjà un compte ?"),
                          Text(
                            " Connexion",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
