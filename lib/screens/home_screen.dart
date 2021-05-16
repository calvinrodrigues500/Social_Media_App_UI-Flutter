import 'package:dribbble_ui_clone_1/screens/conversation_screen.dart';
import 'package:dribbble_ui_clone_1/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onHorizontalDragEnd: (DragEndDetails deatils) {
          if (deatils.primaryVelocity < 0) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ConversationScreen()));
          }
        },
        child: SafeArea(
          child: ListView(
            children: [
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello',
                          style: GoogleFonts.poppins(
                              fontSize: 20.0, fontWeight: FontWeight.w200),
                        ),
                        Text(
                          'Alvarado!',
                          style: GoogleFonts.poppins(
                              fontSize: 22.0, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePage()));
                      },
                      child: Container(
                        width: 60.0,
                        height: 60.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: Colors.pinkAccent,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/main profile.jpg'),
                                fit: BoxFit.cover)),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Row(
                    children: [
                      Container(
                        width: 40.0,
                        height: 40.0,
                        child: Icon(
                          Icons.search_rounded,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        width: 250,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search friend',
                              hintStyle: GoogleFonts.poppins(
                                  fontSize: 14.0, fontWeight: FontWeight.w300)),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0xFFFFFFFF),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.05),
                            blurRadius: 10.0,
                            spreadRadius: 20.0)
                      ]),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                child: Row(
                  children: [
                    Container(
                      height: 72.0,
                      width: 72.0,
                      margin: EdgeInsets.only(left: 20.0, right: 5.0),
                      child: Icon(
                        Icons.add,
                        color: Colors.grey,
                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.06),
                                blurRadius: 10.0,
                                spreadRadius: 5.0)
                          ]),
                    ),
                    Container(
                      width: 295.0,
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: [
                          buildCircleAvatar('assets/images/profile1.jpg'),
                          buildCircleAvatar('assets/images/profile2.jpg'),
                          buildCircleAvatar('assets/images/img3.jpeg'),
                          buildCircleAvatar('assets/images/img4.jpeg')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              blurRadius: 10.0,
                              spreadRadius: 10.0)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0)),
                    height: height * 0.5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Column(
                        children: [
                          Container(
                            height: height * 0.4,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/post.jpg'),
                                    fit: BoxFit.cover),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      blurRadius: 10.0,
                                      spreadRadius: 10.0)
                                ]),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: AssetImage(
                                              'assets/images/profile1.jpg'),
                                        ),
                                        SizedBox(
                                          width: 10.0,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Shane Robertson',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                            Text(
                                              '32m ago',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.w200),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.more_vert_rounded,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Container buildCircleAvatar(String imgPath) {
    return Container(
      width: 72.0,
      height: 72.0,
      margin: EdgeInsets.only(left: 20.0),
      padding: EdgeInsets.only(left: 2.0),
      child: CircleAvatar(
        backgroundImage: AssetImage(imgPath),
      ),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.pinkAccent,
          border: Border.all(color: Colors.pinkAccent, width: 2.0)),
    );
  }
}
