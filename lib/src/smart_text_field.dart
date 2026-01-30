import 'package:flutter/material.dart';
import 'input_types.dart';
import 'validators.dart';

class SmartTextInput extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final SmartInputType type;
  final bool isRequired;
  final int? minLength;

  const SmartTextInput({
    super.key,
    required this.controller,
    required this.label,
    this.type = SmartInputType.text,
    this.isRequired = false,
    this.minLength,
  });

  @override
  State<SmartTextInput> createState() => _SmartTextInputState();
}

class _SmartTextInputState extends State<SmartTextInput> {
  bool _obscure = true;

  String? _validator(String? value) {
    if (widget.isRequired) {
      final res = SmartValidators.required(value);
      if (res != null) return res;
    }

    switch (widget.type) {
      case SmartInputType.email:
        return SmartValidators.email(value);
      case SmartInputType.phone:
        return SmartValidators.phone(value);
      case SmartInputType.password:
        return SmartValidators.minLength(value, widget.minLength ?? 6);
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText:
      widget.type == SmartInputType.password ? _obscure : false,
      validator: _validator,
      decoration: InputDecoration(
        labelText: widget.label,
        border: const OutlineInputBorder(),
        suffixIcon: widget.type == SmartInputType.password
            ? IconButton(
          icon: Icon(
            _obscure ? Icons.visibility_off : Icons.visibility,
          ),
          onPressed: () {
            setState(() => _obscure = !_obscure);
          },
        )
            : null,
      ),
    );
  }
}
