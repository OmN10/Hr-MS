import 'package:flutter/material.dart';
import 'package:speridian/model/directory.model.dart';
import 'package:speridian/view/confirm_mpin.dart';
import 'package:speridian/view/directories.dart';
import 'package:speridian/view/leave_balance.dart';
import 'package:speridian/view/leave_request.dart';
import 'package:speridian/view/notification.dart';
import 'package:speridian/view/password.dart';
import 'package:speridian/view/profile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    List<CallModel> ofUser = [
      CallModel(
        onPress: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Profile()));
        },
        imageName: "assets/contact.png",
        name: "Directories",
        message: "",
      ),
      CallModel(
        onPress: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Leave()));
        },
        imageName: "assets/payment.png",
        name: "Payment",
        message: "",
      ),
      CallModel(
        onPress: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Password()));
        },
        imageName: "assets/pin.png",
        name: "Pin",
        message: "",
      ),
      CallModel(
        onPress: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Directories()));
        },
        imageName: "assets/edit.png",
        name: "Edit",
        message: "",
      ),
      CallModel(
        onPress: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Leave1()));
        },
        imageName: "assets/action.png",
        name: "Action",
        message: "",
      ),
      CallModel(
        onPress: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Password()));
        },
        imageName: "assets/request.png",
        name: "Request",
        message: "",
      ),
      CallModel(
        onPress: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Profile()));
        },
        imageName: "assets/transit.png",
        name: "Transit",
        message: "",
      )
    ];
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: Text(
            "DashBoard",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Notify()));
                },
                icon: Icon(Icons.notification_add))
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: DrawerHeader(
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage(
                                "assets/kk.PNG",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Omkar Naikare",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            )),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "omkarnaikare10@gmail.com",
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    )),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
                leading: Icon(Icons.person),
                title: Text("My Profile"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.wallet),
                title: Text("Expenses"),
                trailing: Icon(Icons.arrow_circle_down),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Leave()));
                },
                leading: Icon(Icons.time_to_leave),
                title: Text("Leave Request"),
                trailing: Icon(Icons.arrow_circle_down),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Leave1()));
                },
                leading: Icon(Icons.time_to_leave),
                title: Text("Leave Balance"),
                trailing: Icon(Icons.arrow_circle_down),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.shutter_speed_outlined),
                title: Text("Timesheet"),
                trailing: Icon(Icons.arrow_circle_down),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.payment),
                title: Text("Payment"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Directories()));
                },
                leading: Icon(Icons.file_copy_sharp),
                title: Text("Directories"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.info),
                title: Text("Policy"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Password()));
                },
                leading: Icon(Icons.lock),
                title: Text("MPIN"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Confirm()));
                },
                leading: Icon(
                  Icons.logout,
                  color: Colors.red,
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(color: Colors.red),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
                height: 150,
                color: Colors.blue,
                child: Column(children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/kk.PNG"),
                          radius: 50,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Omkar Naikare",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            "Developer | SP8018",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          Text(
                            "Location : Mumbai",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  )
                ])),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 50,
                      crossAxisSpacing: 50),
                  children: [
                    for (int i = 0; i < ofUser.length; i++) ...[
                      GestureDetector(
                          onTap: () {
                            ofUser[i].onPress!();
                          },
                          child: Card(
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      ofUser[i].imageName,
                                    ),
                                  ),
                                  color:
                                      const Color.fromARGB(255, 120, 110, 171),
                                  borderRadius: BorderRadius.circular(5)),
                              height: 100,
                              width: 50,
                            ),
                          )),
                    ]
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
