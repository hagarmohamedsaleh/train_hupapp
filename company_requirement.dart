import 'package:flutter/material.dart';

import 'login _screen.dart';

class CompanyRequirement extends StatefulWidget {
  const CompanyRequirement({super.key});

  @override
  State<CompanyRequirement> createState() => _CompanyRequirementState();
}

class _CompanyRequirementState extends State<CompanyRequirement> {
  final _formKey = GlobalKey<FormState>();
  final _companyNameController = TextEditingController();
  final _contactController = TextEditingController();
  final _taxController = TextEditingController();
  final _locationController = TextEditingController();
  final _branchesController = TextEditingController();

  @override
  void dispose() {
    _companyNameController.dispose();
    _contactController.dispose();
    _taxController.dispose();
    _locationController.dispose();
    _branchesController.dispose();
    super.dispose();
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
            top: 80,
            right: 15,
            left: 15,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 68.0),
                      child: Image.asset('assets/images/img_image_22.png',
                          height: 252),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "company",
                          style: TextStyle(
                            fontFamily: 'Acme',
                            color: Color.fromRGBO(255, 121, 102, 1),
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          "requirement",
                          style: TextStyle(
                            fontFamily: 'Acme',
                            color: Colors.black87,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        /*   Image.asset('assets/images/img_image_22.png',
                            width: 369.92, height: 202),*/
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 38.0),
                          child: Column(
                            children: [
                              TextFormField(
                                controller: _companyNameController,
                                style: const TextStyle(height: .1),
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.person,
                                      color: Color.fromRGBO(196, 196, 196, 1)),
                                  filled: true,
                                  hintText: "company name",
                                  hintStyle: const TextStyle(
                                    color: Color.fromRGBO(123, 116, 116, 1),
                                  ),
                                  fillColor:
                                      const Color.fromRGBO(237, 231, 231, 1),
                                  border: _buildOutlineInputBorder(),
                                  focusedBorder: _buildOutlineInputBorder(),
                                  enabledBorder: _buildOutlineInputBorder(),
                                  errorBorder: _buildOutlineInputBorder(),
                                  disabledBorder: _buildOutlineInputBorder(),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'please enter your company name';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              TextFormField(
                                controller: _contactController,
                                style: const TextStyle(height: .1),
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.call,
                                      color: Color.fromRGBO(196, 196, 196, 1)),
                                  filled: true,
                                  hintText: "contact number",
                                  hintStyle: const TextStyle(
                                    color: Color.fromRGBO(123, 116, 116, 1),
                                  ),
                                  fillColor:
                                      const Color.fromRGBO(237, 231, 231, 1),
                                  border: _buildOutlineInputBorder(),
                                  focusedBorder: _buildOutlineInputBorder(),
                                  enabledBorder: _buildOutlineInputBorder(),
                                  errorBorder: _buildOutlineInputBorder(),
                                  disabledBorder: _buildOutlineInputBorder(),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'please enter your contact number';
                                  } else if (value.length < 11) {
                                    return 'contact number must be 11 number!';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              TextFormField(
                                controller: _taxController,
                                style: const TextStyle(height: .1),
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(
                                      Icons.keyboard_alt_outlined,
                                      color: Color.fromRGBO(196, 196, 196, 1)),
                                  hintText: "tax number",
                                  hintStyle: const TextStyle(
                                    color: Color.fromRGBO(123, 116, 116, 1),
                                  ),
                                  filled: true,
                                  fillColor:
                                      const Color.fromRGBO(237, 231, 231, 1),
                                  border: _buildOutlineInputBorder(),
                                  focusedBorder: _buildOutlineInputBorder(),
                                  enabledBorder: _buildOutlineInputBorder(),
                                  errorBorder: _buildOutlineInputBorder(),
                                  disabledBorder: _buildOutlineInputBorder(),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'please enter your tax number';
                                  } else if (value.length != 9) {
                                    return 'tax number is wrong';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              TextFormField(
                                controller: _locationController,
                                style: const TextStyle(height: .1),
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.add_location,
                                      color: Color.fromRGBO(196, 196, 196, 1)),
                                  hintText: "location",
                                  hintStyle: const TextStyle(
                                    color: Color.fromRGBO(123, 116, 116, 1),
                                  ),
                                  filled: true,
                                  fillColor:
                                      const Color.fromRGBO(237, 231, 231, 1),
                                  border: _buildOutlineInputBorder(),
                                  focusedBorder: _buildOutlineInputBorder(),
                                  enabledBorder: _buildOutlineInputBorder(),
                                  errorBorder: _buildOutlineInputBorder(),
                                  disabledBorder: _buildOutlineInputBorder(),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'please enter your location';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              TextFormField(
                                controller: _branchesController,
                                style: const TextStyle(height: .1),
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.account_tree,
                                      color: Color.fromRGBO(196, 196, 196, 1)),
                                  hintText: "branches",
                                  hintStyle: const TextStyle(
                                    color: Color.fromRGBO(123, 116, 116, 1),
                                  ),
                                  filled: true,
                                  fillColor:
                                      const Color.fromRGBO(237, 231, 231, 1),
                                  border: _buildOutlineInputBorder(),
                                  focusedBorder: _buildOutlineInputBorder(),
                                  enabledBorder: _buildOutlineInputBorder(),
                                  errorBorder: _buildOutlineInputBorder(),
                                  disabledBorder: _buildOutlineInputBorder(),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'please enter your branches';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 40,
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
                                'Finish',
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
                                          const Login_Screen()));
                            }
                          },
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder _buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(16),
    );
  }
}
