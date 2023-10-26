import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key, this.controller});
  final TextEditingController? controller;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  final _obscText='*';

  bool _isLooking=true;

  void _visibilities(){
      setState(() {
              _isLooking=!_isLooking;

      });
  }

  @override
  Widget build(BuildContext context) {
    return  TextField(
      controller: widget.controller,
      obscureText: _isLooking,
      obscuringCharacter: _obscText,
      autofillHints: const [AutofillHints.password],
      keyboardType: TextInputType.visiblePassword,
      decoration:  InputDecoration(border: const OutlineInputBorder(),labelText: 'Password', suffix: IconButton(onPressed: () {_visibilities();}, icon:  Icon(_isLooking ? Icons.visibility : Icons.visibility_off))),
      
    );
  }
}