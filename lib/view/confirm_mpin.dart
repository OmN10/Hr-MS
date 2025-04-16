import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:speridian/view/dashboard.dart';
import 'package:speridian/view/login.dart';

class Confirm extends StatefulWidget {
  const Confirm({super.key});

  @override
  State<Confirm> createState() => _ConfirmState();
}

class _ConfirmState extends State<Confirm> {
  TextEditingController password = TextEditingController();

  bool obsecuretext = true;
  GlobalKey<FormState> validator = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "MPIN",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              color: Colors.white,
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              icon: Icon(Icons.cancel))
        ],
      ),
      body: Form(
        key: validator,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                maxLength: 4,
                controller: password,
                obscureText: obsecuretext,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter MPIN";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    labelText: "Enter MPIN",
                    suffix: GestureDetector(
                      onTap: () {
                        obsecuretext = !obsecuretext;
                        setState(() {});
                      },
                      child: obsecuretext
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      if (!validator.currentState!.validate()) {}
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return SingleChildScrollView(
                              child: Column(
                                children: [
                                  for (int i = 0; i < 5; i++) ...[
                                    ListTile(
                                      leading: CircleAvatar(
                                        backgroundImage:
                                            AssetImage("assets/kk.PNG"),
                                      ),
                                      title: Text("Omkar"),
                                    ),
                                    Divider()
                                  ]
                                ],
                              ),
                            );
                          });

                      if (password.text == "1234") {
                        EasyLoading.showSuccess("Login SuccessFul");
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Dashboard()));
                        setState(() {});
                      } else {
                        EasyLoading.showError("Invalid MPIN");
                      }
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
