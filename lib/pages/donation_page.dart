// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DonationPage extends StatelessWidget {
  final String smartUser;
  final String imagePath;
  const DonationPage({
    Key? key,
    required this.smartUser,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.white,
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(backgroundImage: AssetImage(imagePath)),
                ),
                title: Text(
                  smartUser,
                  style: const TextStyle(color: Colors.black),
                ),
                actions: const [
                  Icon(
                    Icons.check_circle,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 180,
                  )
                ]),
            body: SingleChildScrollView(
                child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Send your Love to $smartUser to",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const Text(
                "Become a real Fan",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26, width: 2),
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(9)),
                  height: 60,
                  child: const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        icon: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.currency_exchange_rounded,
                            color: Colors.black,
                          ),
                        ),
                        hintText: "Enter the amount",
                        focusedBorder: InputBorder.none),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26, width: 2),
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(9)),
                  height: 60,
                  child: const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "     Your name(optional)",
                        focusedBorder: InputBorder.none),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26, width: 2),
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(9)),
                  height: 150,
                  child: const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "     Say something nice. (optional)",
                        alignLabelWithHint: true,
                        focusedBorder: InputBorder.none),
                  ),
                ),
              ),
              Container(
                height: 50,
              ),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      final snackBar = SnackBar(
                        content: const Text('Not supported yet!'),
                        backgroundColor: (Colors.black12),
                        action: SnackBarAction(
                          label: 'dismiss',
                          onPressed: () {},
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: const Text('Support ')),
              )
            ]))));
  }
}
