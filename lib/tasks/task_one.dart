import 'package:flutter/material.dart';

class TaskOne extends StatelessWidget {
   TaskOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomPaint(

        child: ClipPath(
          clipper: cliperClipper(),

          child: Container(
            height: 320,
            width: 400,
            decoration: BoxDecoration(

                gradient: LinearGradient(colors: [
                  Colors.purpleAccent,
                  Colors.purple,
                  Colors.deepPurple
                ])),
            child:
            Column(
              children: [
                AppBar(
                  actions: [
                    Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ))
                  ],
                  backgroundColor: Colors.transparent,
                  leading: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage("https://img.freepik.com/free-photo/young-beautiful-woman-pink-warm-sweater-natural-look-smiling-portrait-isolated-long-hair_285396-896.jpg?size=626&ext=jpg&ga=GA1.1.523418798.1710460800&semt=ais"),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          children: [
                            Text(
                              "Marry",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height:2,
                            ),
                            Row(
                              children: [
                                Icon(
                                  size: 20,
                                  Icons.location_on_sharp,
                                  color: Colors.white,
                                ),
                                Text(
                                  "China Beijing",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              fixedSize: Size(100, 10)),
                          onPressed: () {},
                          child:
                          Text(
                            "Follow",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.purple),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "648",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    Text(
                      "7",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    Text(
                      "1046",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "  Follow",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Text(
                      "Bucket", style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),),
                    Text(
                      "Followers",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        painter: Masterpaint(),
      ),
    );
  }
}
class Masterpaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {}
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
class cliperClipper extends CustomClipper<Path>{
  @override
 Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0,size.height-50);
    path.lineTo(size.width,size.height);
    path.quadraticBezierTo(size.width,size.height,size.width,size.height);
    path.lineTo(size.width,0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
   return true;
  }
}