import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/material.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class RequestCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
              height: 220,
              width: double.maxFinite,
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.all(7),
                  child: Stack(children: <Widget>[
                    Align(
                      alignment: Alignment.centerRight,
                      child: Stack(
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.only(left: 10, top: 5),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      cryptoIcon(),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      cryptoNameSymbol(),
                                      Spacer(),
                                      cryptoChange(),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      changeIcon(),
                                      SizedBox(
                                        width: 20,
                                      )
                                    ],
                                  ),
                                  Row(
                                 //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      cryptoAmount(),
                                      buttons(),
                                    ],
                                  )
                                ],
                              ))
                        ],
                      ),
                    )
                  ]),
                ),
              ),
            )));
  }
  Widget cryptoIcon() {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Icon(
            CryptoFontIcons.BTC,
            color: Colors.amber,
            size: 40,
          )),
    );
  }
  Widget cryptoNameSymbol() {
    return Align(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          text: 'Patner',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
          children: <TextSpan>[
            TextSpan(
                text: '\nType',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
  Widget cryptoChange() {
    return Align(
      alignment: Alignment.topRight,
      child: RichText(
        text: TextSpan(
          text: '75%',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.green, fontSize: 20),
          children: <TextSpan>[
            TextSpan(
                text: '\nCompleted',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
  Widget changeIcon() {
    return Align(
        alignment: Alignment.topRight,
        child: Icon(
          Typicons.input_checked,
          color: Colors.green,
          size: 30,
        ));
  }
  Widget cryptoAmount() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(

          children: <Widget>[
           SizedBox(height: 10,),

            RichText(
              textAlign: TextAlign.left,

              text: TextSpan(
                text: 'Item',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 35,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: '\n\$0.1349',
                      style: TextStyle(
                          color: Colors.grey,
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: '\n  0.1349',
                      style: TextStyle(
                          color: Colors.grey,
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buttons(){
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(left:80.0,top: 15),
        child: Column(
          children: <Widget>[
            MaterialButton(
              minWidth: 100,
              height: 40,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                      color: Color(0xff501396),
                      width: 3
                  )
              ),
              onPressed: (){

              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "View",
                    style: TextStyle(
                        color: Color(0xff501396),
                        fontFamily: "CentraleSansRegular",
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            MaterialButton(
              minWidth: 100,
              height: 40,
              color: Color(0xff501396),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                      color: Color(0xff501396),
                      width: 3
                  )
              ),
              onPressed: (){

              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Donate",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "CentraleSansRegular",
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),

//            Container(
//              width: 80,
//              height: 40,
//              decoration: BoxDecoration(
//                gradient: LinearGradient(
//                  colors: [
//                    Color(0xff471a91),
//                    Color(0xff3cabff)
//                  ],
//                ),
//              ),
//              child: Center(
//                child: Text(
//                  "Donate",
//                  style: TextStyle(
//                      color: Colors.white,
//                      fontFamily: "CentraleSansRegular",
//                      fontSize: 18,
//                      fontWeight: FontWeight.bold
//                  ),
//                ),
//              ),
//            ),


          ],
        ),
      ),
    );
  }
}