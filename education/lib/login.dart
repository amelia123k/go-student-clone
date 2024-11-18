// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'go_student.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(builder: (_) {
        return GoStudent();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 30, 10, 15),
                    padding: const EdgeInsets.all(16),
                    width: 500,
                    height: 220,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/dowload.jpg'),
                            backgroundColor: Colors.black,
                            radius: 50,
                          ),
                        ),
                        Text(
                          "university of Buea",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                            'Enter your matricule number and password in the fields below to sign in',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.white, fontSize: 13)),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      decoration:
                          InputDecoration(labelText: "Matriculatin Number"),
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      decoration: InputDecoration(labelText: "password"),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15),


                child: ElevatedButton(
                  onPressed: () {
                  ///  navigateNextPage(context);
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                    return GoStudent();
                  }));

                  },
                  child: Text(
                    'LOGIN',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 29, 129, 216),
                      fixedSize: Size(350, 5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'CREATE ACCOUNT',
                      style: TextStyle(color: Colors.white, fontSize: 11),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 29, 129, 216),
                        fixedSize: Size(150, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'FORGOT PASSWORD',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 29, 129, 216),
                      fixedSize: Size(150, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          'online help',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 29, 129, 216),
                      fixedSize: Size(150, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
