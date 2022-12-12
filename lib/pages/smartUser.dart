// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore: file_names
import 'package:flutter/material.dart';

class SmartUser extends StatefulWidget {
  final String smartUser;
  final String imagePath;
  final String profession;
  const SmartUser({
    Key? key,
    required this.smartUser,
    required this.imagePath,
    required this.profession,
  }) : super(key: key);

  @override
  State<SmartUser> createState() => _SmartUserState();
}

class _SmartUserState extends State<SmartUser> {
  @override
  Widget build(BuildContext context) {
    const SizedBox(
      height: 20,
    );
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                  color: Colors.black, width: 5, style: BorderStyle.solid),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    widget.imagePath,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      widget.smartUser,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(widget.profession),
                  ),
                ]),
          ),
        ));
  }
}
