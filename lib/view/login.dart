import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:speridian/view/password.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController username = TextEditingController();

  GlobalKey<FormState> validator = GlobalKey<FormState>();

  void saveloginecred() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString("username", username.text);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "Set Username",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Form(
        key: validator,
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter username";
                  } else {
                    return null;
                  }
                },
                controller: username,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: " Create UserName",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        if (!validator.currentState!.validate()) {}
                        if (username.text == "Omkar") {
                          saveloginecred();
                          EasyLoading.dismiss();
                          EasyLoading.showSuccess("Next Step");
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Password()));
                        } else {
                          EasyLoading.showError("Wrong Username");
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
