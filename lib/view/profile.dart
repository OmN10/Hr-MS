import 'package:flutter/material.dart';
import 'package:speridian/view/dashboard.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "User Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: IconButton(
            color: Colors.white,
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Dashboard()));
            },
            icon: Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.create,
                color: Colors.white,
              ))
        ],
      ),
      body: Column(children: [
        Stack(
          children: [
            Container(
              height: 200,
              color: Colors.blue,
            ),
            Positioned(
              top: 90,
              right: 30,
              child: Container(
                child: Card(
                  elevation: 200,
                  shadowColor: Colors.black12,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 52),
                    child: Column(
                      children: [
                        Text("Omkar Naikare"),
                        Text("FLutter Developer")
                      ],
                    ),
                  ),
                ),
                height: 150,
                width: 350,
              ),
            ),
            Positioned(
              top: 1,
              left: 150,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/kk.PNG"), fit: BoxFit.cover),
                    color: Colors.green,
                    shape: BoxShape.circle),
                height: 150,
                width: 120,
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Expanded(
          child: ListView(
            children: [
              Card(
                shadowColor: Colors.black,
                elevation: 7,
                color: Colors.white,
                child: Container(
                  height: 60,
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Employee Code",
                          style: TextStyle(fontSize: 19),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "SPRA5053",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                shadowColor: Colors.black,
                elevation: 7,
                color: Colors.white,
                child: Container(
                  height: 60,
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Department",
                          style: TextStyle(fontSize: 19),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Mobility",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                shadowColor: Colors.black,
                elevation: 7,
                color: Colors.white,
                child: Container(
                  height: 60,
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Office Location",
                          style: TextStyle(fontSize: 19),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mumbai - Spredian",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                shadowColor: Colors.black,
                elevation: 7,
                color: Colors.white,
                child: Container(
                  height: 60,
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Phone Number",
                          style: TextStyle(fontSize: 19),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "+91 9372616368",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                shadowColor: Colors.black,
                elevation: 7,
                color: Colors.white,
                child: Container(
                  height: 60,
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " Email",
                          style: TextStyle(fontSize: 19),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          " omkarnaikare10@gmail.com",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                shadowColor: Colors.black,
                elevation: 7,
                color: Colors.white,
                child: Container(
                  height: 60,
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Reporting Manager",
                          style: TextStyle(fontSize: 19),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          " Aishwarya Naikare",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                shadowColor: Colors.black,
                elevation: 7,
                color: Colors.white,
                child: Container(
                  height: 100,
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Address",
                          style: TextStyle(fontSize: 19),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "f1/10 , Best Colony, Amrut Nagar , Ghatkopar West, Mumbai = 400086 ",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                shadowColor: Colors.black,
                elevation: 7,
                color: Colors.white,
                child: Container(
                  height: 70,
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Employee Post",
                          style: TextStyle(fontSize: 19),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          " Flutter Developer ",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
