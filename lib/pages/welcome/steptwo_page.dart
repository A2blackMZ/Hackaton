import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:colocfind/pages/welcome/widgets/floating_label_input.dart'; // Assurez-vous que le chemin est correct

class StepTwoPage extends StatelessWidget {
  const StepTwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/ketut.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: const Color(0xAA000000),
            ),
          ),
          // ignore: sized_box_for_whitespace
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
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
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          FadeInUp(
                            duration: const Duration(milliseconds: 1200),
                            child: Text(
                              "Renseignez plus d'informations sur vous",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[300],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          children: <Widget>[
                            FadeInUp(
                              duration: const Duration(milliseconds: 1200),
                              child: const FloatingLabelInput(
                                label: "Birthday",
                                keyboardType: TextInputType.emailAddress,
                                textColor: Colors.white,
                                width:
                                    500, // Ajouter cette ligne avec la valeur souhaitée
                                height:
                                    25, // Ajouter cette ligne avec la valeur souhaitée
                              ),
                            ),
                            FadeInUp(
                              duration: const Duration(milliseconds: 1200),
                              child: const FloatingLabelInput(
                                label: "Sex",
                                keyboardType: TextInputType.emailAddress,
                                textColor: Colors.white,
                                width:
                                    500, // Ajouter cette ligne avec la valeur souhaitée
                                height:
                                    25, // Ajouter cette ligne avec la valeur souhaitée
                              ),
                            ),
                            FadeInUp(
                              duration: const Duration(milliseconds: 1200),
                              child: const FloatingLabelInput(
                                label: "Profession",
                                keyboardType: TextInputType.emailAddress,
                                textColor: Colors.white,
                                width:
                                    500, // Ajouter cette ligne avec la valeur souhaitée
                                height:
                                    25, // Ajouter cette ligne avec la valeur souhaitée
                              ),
                            ),
                            FadeInUp(
                              duration: const Duration(milliseconds: 1300),
                              child: const FloatingLabelInput(
                                label: "Phone number",
                                obscureText: true,
                                textColor: Colors.white,
                                width:
                                    300, // Ajouter cette ligne avec la valeur souhaitée
                                height:
                                    50, // Ajouter cette ligne avec la valeur souhaitée
                              ),
                            ),
                            FadeInUp(
                              duration: const Duration(milliseconds: 1200),
                              child: const FloatingLabelInput(
                                label: "Your picture",
                                keyboardType: TextInputType.emailAddress,
                                textColor: Colors.white,
                                width:
                                    500, // Ajouter cette ligne avec la valeur souhaitée
                                height:
                                    25, // Ajouter cette ligne avec la valeur souhaitée
                              ),
                            ),
                          ],
                        ),
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1400),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Container(
                            padding: const EdgeInsets.only(top: 3, left: 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: const Border(
                                bottom: BorderSide(color: Colors.white),
                                top: BorderSide(color: Colors.white),
                                left: BorderSide(color: Colors.white),
                                right: BorderSide(color: Colors.white),
                              ),
                            ),
                            child: MaterialButton(
                              minWidth: double.infinity,
                              height: 60,
                              onPressed: () {},
                              color: Colors.greenAccent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1500),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              " ",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
