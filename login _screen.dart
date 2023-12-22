import 'package:flutter/material.dart';
import 'package:train_hupapp/completeinfo.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  String user = "";

  GlobalKey<FormState> formstate = new GlobalKey<FormState>();
  send() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const Completeinfo()));
    }
  }

  final emailContraller = TextEditingController();
  final passContraller = TextEditingController();
  bool passtoggle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SingleChildScrollView(),
              const Image(
                image: AssetImage('assets/images/loginscreen.jpeg'),
              ),
              const SizedBox(
                height: 12,
              ),

              // list tile//////////////////////////////////
              const ListTile(
                title: Text(
                  "Login",
                  style: TextStyle(
                      color: Color(0xffFF725E),
                      fontSize: 28,
                      fontFamily: 'Acme',
                      fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  "Sign in to your world",
                  style: TextStyle(
                      color: Color(0xff7B7474),
                      fontSize: 18,
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.w700),
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              // formmm/////////////////////////////////
              Form(
                autovalidateMode: AutovalidateMode.always,
                key: formstate,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      child: TextFormField(
                        style: const TextStyle(height: .1),
                        controller: emailContraller,

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'please enter your email address';
                          } else if (!value.contains("@") ||
                              !value.contains(".")) {
                            return 'please enter a valid email address';
                          }
                          return null;
                        },
                        // validator: (value) {
                        //   if (value!.isEmpty) {
                        //     return "email is empty!";
                        //   } else {
                        //     return null;
                        //   }
                        // },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xffEDE7E7)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          border: InputBorder.none,
                          filled: true,
                          fillColor: const Color(0xffEDE7E7),
                          prefixIcon:
                              const Icon(Icons.email, color: Colors.grey),
                          hintText: "email",
                          hintStyle: const TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextFormField(
                        style: const TextStyle(height: .1),
                        controller: passContraller,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "password is empty!";
                          }
                          if (value.length < 8) {
                            return "the password should be more than 8 characters";
                          } else {
                            return null;
                          }
                        },
                        obscureText: !passtoggle,
                        obscuringCharacter: "*",
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: const Color(0xffEDE7E7),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xffEDE7E7)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            prefixIcon:
                                const Icon(Icons.lock, color: Colors.grey),
                            hintText: "password",
                            hintStyle: const TextStyle(color: Colors.grey),
                            suffix: InkWell(
                              onTap: () {
                                setState(() {
                                  passtoggle = !passtoggle;
                                });
                              },
                              child: Icon(
                                passtoggle
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.grey,
                              ),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "forget password?",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Nunito Sans',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.black,
                              decorationThickness: 2,
                            ),
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    //radio buttons in the form

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Radio(
                            value: "student",
                            groupValue: user,
                            onChanged: (val) {
                              setState(() {
                                user = val!;
                              });
                            }),
                        const Text(
                          "Student",
                          style: TextStyle(fontSize: 13, fontFamily: 'Acme'),
                        ),
                        Radio(
                            value: "company",
                            groupValue: user,
                            onChanged: (val) {
                              setState(() {
                                user = val!;
                              });
                            }),
                        const Text(
                          "Company",
                          style: TextStyle(fontSize: 13, fontFamily: 'Acme'),
                        ),
                        Radio(
                          value: "faculty",
                          groupValue: user,
                          onChanged: (val) {
                            setState(() {
                              user = val!;
                            });
                          },
                        ),
                        const Text(
                          "Faculty",
                          style: TextStyle(fontSize: 13, fontFamily: 'Acme'),
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    MaterialButton(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      color: const Color(0xffFF725E),
                      minWidth: 350,
                      height: 40,
                      onPressed: send,
                      child: const Text(
                        "login",
                        style: TextStyle(
                            fontFamily: 'Acme',
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Are you company?",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Acme',
                              fontSize: 14,
                              // decoration: TextDecoration.underline,
                              decorationColor: Colors.black,
                              decorationThickness: 1),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "register here",
                              style: TextStyle(
                                  color: Color(0xffFF725E),
                                  fontFamily: 'Nunito Sans',
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 1,
                                  decorationColor: Color(0xffFF725E)),
                            ))
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
