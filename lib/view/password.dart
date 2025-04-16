import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:speridian/view/dashboard.dart';
import 'package:speridian/view/login.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  bool obsecuretext = true;
  GlobalKey<FormState> validator = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              color: Colors.white,
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              icon: Icon(Icons.cancel))
        ],
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "Set MPIN",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Form(
        key: validator,
        child: Column(
          children: [
            SizedBox(
              height: 50,
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
                    prefixIcon: Icon(Icons.password),
                    suffix: GestureDetector(
                      onTap: () {
                        obsecuretext = !obsecuretext;
                        setState(() {});
                      },
                      child: Icon(obsecuretext
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                maxLength: 4,
                controller: confirmpassword,
                obscureText: obsecuretext,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Confirm MPIN";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    labelText: "Confirm  MPIN",
                    prefixIcon: Icon(Icons.password),
                    suffix: GestureDetector(
                      onTap: () {
                        obsecuretext = !obsecuretext;
                        setState(() {});
                      },
                      child: Icon(obsecuretext
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
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

                        if (password.text == "1234" &&
                            confirmpassword.text == "1234") {
                          EasyLoading.dismiss();
                          EasyLoading.showSuccess("Login Successful");

                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Dashboard()));
                        } else {
                          EasyLoading.dismiss();
                          EasyLoading.showError("Password is not match");
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
