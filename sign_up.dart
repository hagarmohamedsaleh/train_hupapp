import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'company_requirement.dart';
import 'login _screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool obscureText = true;
  @override
  void dispose() {
    _userNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _togglePasswordText() {
    obscureText = !obscureText;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
            bottom: 10,
            left: 14,
            right: 14,
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Image.asset('assets/images/img_image_20.png',
                        width: 369.92, height: 302),
                    const SizedBox(
                      height: 30,
                    ),
                    const Row(
                      children: [
                        SizedBox(
                          width: 80,
                        ),
                        Text(
                          "create account !",
                          style: TextStyle(
                            fontFamily: 'Acme',
                            color: Color.fromRGBO(255, 121, 102, 1),
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 38.0),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _userNameController,
                            style: const TextStyle(height: .1),
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.person,
                                  color: Color.fromRGBO(196, 196, 196, 1)),
                              filled: true,
                              hintText: "user name",
                              hintStyle: const TextStyle(
                                color: Color.fromRGBO(123, 116, 116, 22),
                              ),
                              fillColor: const Color.fromRGBO(237, 231, 231, 1),
                              border: _buildOutlineInputBorder(),
                              focusedBorder: _buildOutlineInputBorder(),
                              enabledBorder: _buildOutlineInputBorder(),
                              errorBorder: _buildOutlineInputBorder(),
                              disabledBorder: _buildOutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'please enter your name';
                              } else if (value.length < 5) {
                                return 'too short username!';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _emailController,
                            style: const TextStyle(height: .1),
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.email,
                                  color: Color.fromRGBO(196, 196, 196, 1)),
                              filled: true,
                              hintText: "email",
                              hintStyle: const TextStyle(
                                color: Color.fromRGBO(123, 116, 116, 22),
                              ),
                              fillColor: const Color.fromRGBO(237, 231, 231, 1),
                              border: _buildOutlineInputBorder(),
                              focusedBorder: _buildOutlineInputBorder(),
                              enabledBorder: _buildOutlineInputBorder(),
                              errorBorder: _buildOutlineInputBorder(),
                              disabledBorder: _buildOutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'please enter your email address';
                              } else if (!value.contains("@") ||
                                  !value.contains(".")) {
                                return 'please enter a valid email address';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _passwordController,
                            obscureText: obscureText,
                            obscuringCharacter: "*",
                            style: const TextStyle(height: .1),
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.lock,
                                  color: Color.fromRGBO(196, 196, 196, 1)),
                              hintText: "password",
                              hintStyle: const TextStyle(
                                color: Color.fromRGBO(123, 116, 116, 22),
                              ),
                              suffixIcon: InkWell(
                                onTap: _togglePasswordText,
                                child: Icon(
                                  obscureText
                                      ? CupertinoIcons.eye_fill
                                      : CupertinoIcons.eye_slash_fill,
                                  color: Colors.grey[500],
                                ),
                              ),
                              filled: true,
                              fillColor: const Color.fromRGBO(237, 231, 231, 1),
                              border: _buildOutlineInputBorder(),
                              focusedBorder: _buildOutlineInputBorder(),
                              enabledBorder: _buildOutlineInputBorder(),
                              errorBorder: _buildOutlineInputBorder(),
                              disabledBorder: _buildOutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'please enter your password';
                              } else if (value.length < 5) {
                                return 'must be at least 5 characters';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      child: Container(
                          width: 350,
                          height: 50,
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(255, 114, 94, 1),
                          ),
                          child: const Center(
                              child: Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ))),
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CompanyRequirement()));
                        }
                      },
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "have already account?",
                          style: TextStyle(
                            fontFamily: 'Acme',
                            color: Colors.black87,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          child: const Text(
                            " login now",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontFamily: 'Acme',
                              decorationColor: Colors.deepOrangeAccent,
                              decorationStyle: TextDecorationStyle.double,
                              color: Color.fromRGBO(255, 114, 94, 1),
                              fontSize: 16,
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Login_Screen()));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

OutlineInputBorder _buildOutlineInputBorder() {
  return OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(16),
  );
}
