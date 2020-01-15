import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Image(
            alignment: Alignment.topCenter,
            image: AssetImage("assets/image3.png"),
            fit: BoxFit.contain,
            width: double.infinity,
          ),
          Positioned(
            top: 40,
            left: 30,
            right: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
//                Align(
//                  alignment: Alignment.centerRight,
//                  child: Icon(LineAwesomeIcons.search,
//                  color: Colors.white,
//                  size: 30,),
//                ),
                Text(
                  "Explore",
                   style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'CentraleSansRegular'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                Expanded(
                  flex: 7,
                  child: AutoSizeText(
                    "HungerBye",
                     style: TextStyle(
                              color: Colors.grey[300],
                              fontSize: 32,
                              fontFamily: 'CentraleSansRegular',
                              fontWeight: FontWeight.w100),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: AutoSizeText(
                    "View All",
                     style: TextStyle(
                              color: Colors.grey[300],
                              fontSize: 20,
                              fontFamily: 'CentraleSansRegular',
                              fontWeight: FontWeight.w100),
                  ),
                ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 110),
            height: 300,
            width: 450,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Image.asset("assets/slide1.png"),
                Image.asset("assets/slide2.png"),
                Image.asset("assets/slide3.png")
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 370),
            height: 400,
            width: 400,
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                Center(child: Text("Patners of HungerBye")),

                ListTile(
                  trailing: Icon(Icons.more_vert),
                  leading: Image.asset("assets/ad1.png"),
                  title: Text("Feeding America Society",
                  style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        )),
                        subtitle: Text("Oregon",
                        style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 15,
                        )),
                ),
                ListTile(
                  trailing: Icon(Icons.more_vert),
                  leading: Image.asset("assets/ad2.png"),
                  title: Text("Ubuntu",
                  style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        )),
                        subtitle: Text("Maryland",
                        style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 15,
                        )),
                ),
                ListTile(
                  trailing: Icon(Icons.more_vert),
                  leading: Image.asset("assets/ad3.png"),
                  title: Text("Dallas Morning News",
                  style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        )),
                        subtitle: Text("Washington",
                        style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 15,
                        )),
                ),
                Center(child: Text("See More of Patners")),
                SizedBox(height: 20,),
                Divider(height: 2,thickness: 2.0,),
                SizedBox(height: 20,),

                Center(child: Text("Donors of HungerBye")),
                ListTile(
                  trailing: Icon(Icons.more_vert),
                  leading: Image.asset("assets/ad1.png"),
                  title: Text("Feeding America Society",
                      style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      )),
                  subtitle: Text("Oregon",
                      style: TextStyle(
                        fontFamily: "CentraleSansRegular",
                        fontSize: 15,
                      )),
                ),
                ListTile(
                  trailing: Icon(Icons.more_vert),
                  leading: Image.asset("assets/ad2.png"),
                  title: Text("Ubuntu",
                      style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      )),
                  subtitle: Text("Maryland",
                      style: TextStyle(
                        fontFamily: "CentraleSansRegular",
                        fontSize: 15,
                      )),
                ),
                ListTile(
                  trailing: Icon(Icons.more_vert),
                  leading: Image.asset("assets/ad3.png"),
                  title: Text("Dallas Morning News",
                      style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      )),
                  subtitle: Text("Washington",
                      style: TextStyle(
                        fontFamily: "CentraleSansRegular",
                        fontSize: 15,
                      )),
                ),
                Center(child: Text("See All donors of HungerBye")),
                SizedBox(height: 5,),


              ],
            ),
          )
        ],
      ),
    );
  }
}