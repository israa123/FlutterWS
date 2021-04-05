import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(FaceBookPost());

class FaceBookPost extends StatefulWidget {
  @override
  _FaceBookPostState createState() => _FaceBookPostState();
}

class _FaceBookPostState extends State<FaceBookPost> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WSFlutter task1',
      debugShowCheckedModeBanner: false,
      home: Post(),
    );
  }
}

class Post extends StatelessWidget {
  String url = 'http://marind.com.ar';
  TextStyle defaultStyle = TextStyle(
      color: Colors.black87.withOpacity(.7),
      fontSize: 14,
      fontWeight: FontWeight.w500);
  TextStyle linkStyle = TextStyle(
      color: Colors.blueAccent.withOpacity(.9),
      fontSize: 14,
      fontWeight: FontWeight.w400);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              horizontalTitleGap: 8,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              leading: Container(
                width: 50,
                height: 50,
                child: CircleAvatar(
                  backgroundColor: Colors.black12,
                  radius: 25,
                ),
              ),
              title: Text(
                'Friend Name',
                style: TextStyle(
                    color: Colors.blue[700],
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Text(
                    'Today at 19:33  ',
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  ),
                  Icon(
                    Icons.public,
                    color: Colors.grey,
                    size: 14,
                  ),
                ],
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0, left: 15.0),
              child: Text(
                'I want this mockup SO bad!!',
                style: defaultStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: RichText(
                  text: TextSpan(style: defaultStyle, children: [
                TextSpan(text: 'Found it at '),
                TextSpan(text: url, style: linkStyle),
              ])),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: InkWell(
                child: Text(
                  'See translation',
                  style: linkStyle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                color: Colors.blueAccent.withOpacity(.9),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.thumbsUp,
                        color: Colors.grey,
                        size: 16,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Like', style: TextStyle(color: Colors.grey))
                    ],
                  ),
                ),
                GestureDetector(
                  child: Row(
                    children: [
                      FaIcon(FontAwesomeIcons.commentAlt,
                          color: Colors.grey, size: 16),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Comment',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  child: Row(
                    children: [
                      FaIcon(FontAwesomeIcons.share,
                          color: Colors.grey, size: 16),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Share', style: TextStyle(color: Colors.grey))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  color: Colors.grey.shade100,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: Row(
                          children: [
                            // SizedBox(
                            //   height: 8.0,
                            // ),
                            Image.asset(
                              'images/like2.png',
                              width: 16,
                              height: 16,
                            ),
                            Image.asset(
                              'images/heart.png',
                              width: 16,
                              height: 16,
                            ),
                            Image.asset(
                              'images/3.jpeg',
                              width: 16,
                              height: 16,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Text(
                                '1.035',
                                style: defaultStyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 16.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.black12.withOpacity(.1),
                              radius: 16,
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                    Text(
                                      'Write something ...',
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 13),
                                    ),
                                    Spacer(),
                                    FaIcon(
                                      FontAwesomeIcons.smile,
                                      size: 15,
                                      color: Colors.grey.shade600,
                                    ),
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.camera,
                                      size: 15,
                                      color: Colors.grey.shade600,
                                    ),
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.solidImages,
                                      size: 15,
                                      color: Colors.grey.shade600,
                                    ),
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.image,
                                      size: 15,
                                      color: Colors.grey.shade600,
                                    ),
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
