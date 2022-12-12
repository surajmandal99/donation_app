import 'package:assignment/pages/donation_page.dart';
import 'package:assignment/pages/smartUser.dart';
import 'package:flutter/material.dart';

class HomPage extends StatefulWidget {
  const HomPage({Key? key}) : super(key: key);

  @override
  State<HomPage> createState() => _HomPageState();
}

class _HomPageState extends State<HomPage> {
  // list of smart users
  List mySmartUser = [
    // [ smartUser, imagePath , profession ]
    ["BB ki Vines", "lib/Images/bhuwan.png", "Youtuber"],
    ["Carryminiti", "lib/Images/carryminiti.png", "Youtuber"],
    ["Juice Wrld", "lib/Images/juicewrld.png", "Singer"],
    ["PewDiePie", "lib/Images/pwp.png", "Musican"],
    ["BB ki Vines", "lib/Images/bhuwan.png", "Youtuber"],
    ["Carryminiti", "lib/Images/carryminiti.png", "Youtuber"],
    ["Juice Wrld", "lib/Images/juicewrld.png", "Singer"],
    ["PewDiePie", "lib/Images/pwp.png", "Musican"],
  ];

//list of items for contribution page
  List smartUser = [
    ["lib/Images/bhuwan.png", "BB ki Vines"],
    ["lib/Images/carryminiti.png", "Carryminati"],
    ["lib/Images/juicewrld.png", "Juice Wrld"],
    ["lib/Images/pwp.png", "PewDiePie"],
    ["lib/Images/bhuwan.png", "Youtuber"],
    ["lib/Images/carryminiti.png", "Youtuber"],
    ["lib/Images/juicewrld.png", "Singer"],
    ["lib/Images/pwp.png", "Musican"],
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueAccent[800],
          leading: const Icon(
            Icons.menu,
            size: 37,
          ),
          title: const Text(
            "🧿 T I O B U",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: const [
            Icon(
              Icons.person_outline,
              size: 37,
              color: Colors.black,
            ),
            SizedBox(
              width: 20,
            )
          ]),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
            child: Text(
              "Recommended Creators",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: mySmartUser.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DonationPage(
                                      imagePath: smartUser[index][0],
                                      smartUser: smartUser[index][1],
                                    )));
                        setState(
                          () {},
                        );
                      },
                      child: SmartUser(
                        imagePath: mySmartUser[index][1],
                        smartUser: mySmartUser[index][0],
                        profession: mySmartUser[index][2],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    ));
  }
}
