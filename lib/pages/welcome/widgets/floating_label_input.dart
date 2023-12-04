import 'package:flutter/material.dart';

class FloatingLabelInput extends StatefulWidget {
  final String label;
  final bool obscureText;
  final TextInputType keyboardType;
  final double width; // Nouvelle propriété pour la largeur
  final double height;
  // Nouvelle propriété pour la hauteur

  const FloatingLabelInput({
    Key? key,
    required this.label,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    //required Color textColor,
    required Color textColor,
    required this.width, // Ajouter cette ligne
    required this.height, // Ajouter cette ligne
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FloatingLabelInputState createState() => _FloatingLabelInputState();
}

class _FloatingLabelInputState extends State<FloatingLabelInput> {
  bool _isFocused = false;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: _controller,
          keyboardType: widget.keyboardType,
          obscureText: widget.obscureText,
          style: const TextStyle(
            color: Colors.white, // Couleur du texte du champ de texte
          ),
          decoration: InputDecoration(
            labelText: widget.label,
            labelStyle: TextStyle(
              color: _isFocused ? Colors.white : Colors.grey,
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors
                    .white, // Couleur de la bordure lorsqu'il est en focus
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey.shade400,
              ),
            ),
          ),
          onChanged: (value) {
            setState(() {
              // Met à jour l'état du focus
              _isFocused = value.isNotEmpty;
            });
          },
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
