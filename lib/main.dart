import 'package:flutter/material.dart';
import 'smart_text_input.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoPage(),
    );
  }
}

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Smart Text Input Demo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SmartTextInput(
                controller: emailController,
                label: "Email",
                type: SmartInputType.email,
                isRequired: true,
              ),

              const SizedBox(height: 16),

              SmartTextInput(
                controller: phoneController,
                label: "Phone",
                type: SmartInputType.phone,
                isRequired: true,
              ),

              const SizedBox(height: 16),

              SmartTextInput(
                controller: passwordController,
                label: "Password",
                type: SmartInputType.password,
                minLength: 8,
                isRequired: true,
              ),

              const SizedBox(height: 24),

              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("All inputs valid")),
                    );
                  }
                },
                child: const Text("Validate"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
