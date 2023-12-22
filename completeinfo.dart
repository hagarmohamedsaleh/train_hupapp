import 'package:flutter/material.dart';
import 'package:train_hupapp/sign_up.dart';

class Completeinfo extends StatefulWidget {
  const Completeinfo({super.key});

  @override
  State<Completeinfo> createState() => _CompleteinfoState();
}

class _CompleteinfoState extends State<Completeinfo> {
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();
  send() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const SignUp()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const Image(
              image: AssetImage("assets/images/completeaccount.jpeg"),
              width: 356,
              height: 270,
            ),
            //),
            const SizedBox(
              height: 20,
            ),
            const Text("Complete your profile",
                // textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color(0xffFF725E),
                  fontSize: 22,
                  fontFamily: 'Acme',
                )),

            const SizedBox(
              height: 3,
            ),

            const Icon(
              Icons.cloud_done,
              color: Color(0xffFF725E),
              size: 80,
            ),

            const SizedBox(
              height: 10,
            ),

            Form(
                key: formstate,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      style: const TextStyle(height: .1),

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter your name';
                        } else if (value.length < 5) {
                          return 'too short username!';
                        }
                        return null;
                      },
                      // validator: (value) {
                      //   if (value!.isEmpty) {
                      //     return "enter username ";
                      //   } else {
                      //     return null;
                      //   }
                      // },
                      keyboardType: TextInputType.text,
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
                            const Icon(Icons.person, color: Colors.grey),
                        hintText: "username",
                        hintStyle: const TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      style: const TextStyle(height: .1),
                      validator: (value) {
                        if (value == null) {
                          return "enter phone number ";
                        }
                        if (value.length > 11 || value.length < 11) {
                          return "phone number shoud be 11 number";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: const Color(0xffEDE7E7),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffEDE7E7)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: const Icon(Icons.phone, color: Colors.grey),
                        hintText: "phone",
                        hintStyle: const TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  MaterialButton(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    color: const Color(0xffFF725E),
                    minWidth: 350,
                    height: 40,
                    onPressed: send,
                    child: const Text(
                      "done",
                      style: TextStyle(
                          fontFamily: 'Acme',
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                ]))
          ])),
    ));
  }
}
