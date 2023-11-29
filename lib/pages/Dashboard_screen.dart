import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:myaps/main.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  List catNames = [
    "SIP-LK",
    'BERKAS',
    'SI HRD',
    'APPLE',
    'SARPRAS',
    'MANAJEMEN SURAT',
    'PAPPERLESS',
  ];
  List<Color> catColors = [
    Color(0xFFFFCF2F),
    Color(0xFF6FE08D),
    Color(0xFF61BDFD),
    Color(0xFFFC7C7F),
    Color(0xFFCB84FB),
    Color(0xFF30CF8D),
    Color(0xFFFFCF2F),
    Color(0xFF6FE08D),
  ];

  List<Icon> catIcons = [
    Icon(Icons.attach_money_rounded, color: Colors.white, size: 30),
    Icon(Icons.folder, color: Colors.white, size: 30),
    Icon(Icons.person_2_sharp, color: Colors.white, size: 30),
    Icon(Icons.home_work, color: Colors.white, size: 30),
    Icon(Icons.broadcast_on_personal, color: Colors.white, size: 30),
    Icon(Icons.email_sharp, color: Colors.white, size: 30),
    Icon(Icons.book_online, color: Colors.white, size: 30),
  ];

  List catName = [
    "INSENTIF",
    'SIKAD',
    'SIKEMAS',
    'SIMPEL',
  ];
  List<Color> catColor = [
    Color(0xFFFFCF2F),
    Color(0xFF7e56fe),
    Color(0xFF61BDFD),
    Color(0xFFFC7C7F),
  ];

  List<Icon> catIcon = [
    Icon(Icons.emoji_events, color: Colors.white, size: 30),
    Icon(Icons.school_outlined, color: Colors.white, size: 30),
    Icon(Icons.computer_outlined, color: Colors.white, size: 30),
    Icon(Icons.book, color: Colors.white, size: 30),
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
              color: Color.fromARGB(246, 18, 67, 134),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/image/logo.png',
                      height: 40,
                      width: 40,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.notifications,
                          size: 30,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.person,
                          size: 30,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text(
                    'Wellcome',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "search here...",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Kepegawaian",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 15, right: 15),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: catNames.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 0.7,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: catColors[index],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: catIcons[index],
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          catNames[index],
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Akademik",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                  child: Column(children: [
                    GridView.builder(
                        itemCount: catName.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          childAspectRatio: 0.7,
                        ),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: catColor[index],
                                  shape: BoxShape.circle,
                                ),
                                child: Center(child: catIcon[index]),
                              ),
                              SizedBox(height: 20),
                              Text(
                                catName[index],
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black.withOpacity(0.7)),
                              ),
                            ],
                          );
                        })
                  ]),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        iconSize: 32,
        selectedItemColor: Color(0xFF674AEF),
        selectedFontSize: 18,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment), label: 'Courses'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
