import 'package:admin/feature/login/presentation/provider/login_provider.dart';
import 'package:admin/general/helpers/formvalidations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key,required this.redirectPath});
  final String redirectPath;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<AdminProvider>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Admin Login",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 35),

                SizedBox(width: 325,
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      prefixIcon: const Icon(Icons.email),
                    ),
                    validator: (value) => FormFieldValidators.email(value),
                  ),
                ),

                const SizedBox(height: 16),

                SizedBox(width: 325,
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      prefixIcon: const Icon(Icons.lock),
                    ),
                    validator: (value) => FormFieldValidators.password(value),
                  ),
                ),

                const SizedBox(height: 24),

                provider.loading
                    ? const CircularProgressIndicator()
                    : SizedBox(
                        width: 325,
                        child: ElevatedButton(
                          
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              
                            ),
                          ),
                          onPressed: submit,

                          child: const Text(
                            "Login",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),

                const SizedBox(height: 20),

                if (provider.error != null)
                  Text(
                    provider.error!,
                    style: const TextStyle(color: Colors.red),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void submit() async {
    final provider = context.read<AdminProvider>();

    if (_formKey.currentState!.validate()) {
       await provider.login(
        emailController.text.trim(),
        passwordController.text.trim(),
        onSuccess: (){
context.go(widget.redirectPath);

        }

      );

      
    }
  }
}
