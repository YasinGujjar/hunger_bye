
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hunger_bye/homePage.dart';
import 'package:hunger_bye/screens/register.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailcontroller=TextEditingController();
   TextEditingController passwordcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
       /*  decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image1.png"),
            fit: BoxFit.cover,
            alignment: Alignment.topCenter
          )
        ), */

        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                  decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image1try.png"),
            fit: BoxFit.fill,
            alignment: Alignment.topCenter
          )
        ),
              )),
            Expanded(
              flex: 4,
                          child: Form(
                child: ListView(
                  padding: EdgeInsets.all(10),
                  children: <Widget>[
                   /*  SizedBox(
                      height: MediaQuery.of(context).size.height/2.15,
                    ), */
                    TextFormField(
                      controller: emailcontroller,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "CentraleSansRegular"
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xffd3dde4),
                            width: 3
                          )
                        ),
                        labelText: "Email",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: "CentraleSansRegular"
                        )
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: passwordcontroller,
                      obscureText: true,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "CentraleSansRegular"
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xffd3dde4),
                            width: 3
                          )
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: "CentraleSansRegular"
                        )
                      ),
                    ),
                    SizedBox(height: 20,),

 InkWell(
                        child: Container(
                         width: 330,
                          height: 60,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xff471a91),
                                Color(0xff3cabff)
                              ]),
                              borderRadius: BorderRadius.circular(6.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xFF6078ea).withOpacity(.3),
                                    offset: Offset(0.0, 8.0),
                                    blurRadius: 8.0)
                              ]),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {},
                              child: Center(
                                child: Text("LOGIN",
                                    style: TextStyle(
                                        color: Colors.white,
                                         fontFamily: "CentraleSansRegular",
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ),
                        ),
                      ),

                   /*  Material(
                      
                                    child: InkWell(
                        onTap: (){
                          print("clicked");
                        },
                                      child: Container(
                          width: 330,
                          height: 60,
                          
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xff471a91),
                                Color(0xff3cabff)
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "CentraleSansRegular",
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ),
                    ), */
                    SizedBox(height: 20,),
                    Center(child: Text("Forgot Password?",
                    style: TextStyle(
                      fontFamily: 'CentraleSansRegular',
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                      ),)),
                    SizedBox(height: 20,),
                     Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "New User? ",
                        style: TextStyle(fontFamily: "Poppins-Medium"),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text("SignUp",
                            style: TextStyle(
                                color: Color(0xFF5d74e3),
                                fontFamily: "Poppins-Bold")),
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        MaterialButton(
                          minWidth: 120,
                          height: 70,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                              color: Color(0xffD44638),
                              width: 3
                            )
                          ),
                          onPressed: ()
                          {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(LineAwesomeIcons.google,
                              color: Color(0xffD44638),
                              size: 40,),
                              Text(
                              "Connect with Google",
                              style: TextStyle(
                                color: Color(0xffD44638),
                                fontFamily: "CentraleSansRegular",
                                fontSize: 12,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        MaterialButton(
                      minWidth: 120,
                      height: 70,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                          color: Color(0xff501396),
                          width: 3
                        )
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                          "Continue as Guest",
                          style: TextStyle(
                            color: Color(0xff501396),
                            fontFamily: "CentraleSansRegular",
                            fontSize: 12,
                            fontWeight: FontWeight.bold
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
            ),
          ],
        ),
      ),
    );
  }
}