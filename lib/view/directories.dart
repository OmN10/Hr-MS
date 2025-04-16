import 'package:flutter/material.dart';
import 'package:speridian/model/directory.model.dart';
import 'package:speridian/view/dashboard.dart';

class Directories extends StatefulWidget {
  const Directories({super.key});

  @override
  State<Directories> createState() => _DirectoriesState();
}

class _DirectoriesState extends State<Directories> {
  List<CallModel> ofUserModel = [
    CallModel(
        imageName: "assets/kk.PNG", name: "Omkar Naikare", message: "Hey"),
    CallModel(
        imageName: "assets/logo2.png", name: "Aishwarya", message: "Hello"),
    CallModel(
        imageName: "assets/log3.jpeg", name: "Ramesh", message: "Nice one!"),
    CallModel(
        imageName: "assets/kk.PNG",
        name: "Pnb Bank",
        message: "Current balance = 500000"),
    CallModel(imageName: "assets/log5.jpeg", name: "Ritesh", message: "Yupp!"),
    CallModel(
        imageName: "assets/logo11.jpg", name: "Omkar N", message: "Sure !"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Directory",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Dashboard()));
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: ofUserModel.length,
                itemBuilder: (context, i) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(ofUserModel[i].imageName),
                    ),
                    title: Text(ofUserModel[i].name),
                    subtitle: Text(ofUserModel[i].message ?? ''),
                    trailing: Icon(Icons.arrow_back_ios),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
