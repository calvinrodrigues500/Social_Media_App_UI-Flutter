import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConversationScreen extends StatefulWidget {
  const ConversationScreen({Key key}) : super(key: key);

  @override
  _ConversationScreenState createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: 55,
        height: 55,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.pinkAccent,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.05),
                  blurRadius: 10.0,
                  spreadRadius: 20.0)
            ]),
      ),
      backgroundColor: Color(0xFFFBFDFF),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                Icon(Icons.more_vert_rounded)
              ],
            ),
            Text(
              'Conversation',
              style: GoogleFonts.poppins(
                  fontSize: 22.0, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
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
            SizedBox(
              height: 30.0,
            ),
            Container(
              height: 500,
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  _buildChatRow('assets/images/img3.jpeg', 'Beverly Jones',
                      'You know you\'re in love when'),
                  _buildChatRow('assets/images/profile2.jpg', 'Crystal Flores',
                      'Hey you ! What!`s up!'),
                  _buildChatRow('assets/images/profile1.jpg', 'Brittany Hart',
                      'When i`m good, i`m very good'),
                  _buildChatRow('assets/images/img4.jpeg', 'Deborah Flores',
                      'Hey you ! What!`s up!'),
                  _buildChatRow('assets/images/post.jpg', 'Shane Robeertson',
                      'I am a dancer. I know you`re')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildChatRow(String imgPath, String name, String chat) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(imgPath),
            radius: 30.0,
          ),
          SizedBox(
            width: 20.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: GoogleFonts.poppins(
                    fontSize: 16.0, fontWeight: FontWeight.w600),
              ),
              Text(
                chat,
                style: GoogleFonts.poppins(
                    fontSize: 14.0, fontWeight: FontWeight.w200),
              )
            ],
          )
        ],
      ),
    );
  }
}
