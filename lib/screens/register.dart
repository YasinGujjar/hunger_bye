import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController first_N_controller=TextEditingController();
   TextEditingController last_N_controller=TextEditingController();
   TextEditingController emailcontroller=TextEditingController();
   TextEditingController passwordcontroller=TextEditingController();
    TextEditingController c_passwordcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image1.png"),
            fit: BoxFit.cover,
            alignment: Alignment.topCenter
          )
        ),
        child: Form(
          child: ListView(
            padding: EdgeInsets.all(10),
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height/2.15,
              ),
              TextFormField(
                controller: first_N_controller,
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
                  labelText: "First Name",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: "CentraleSansRegular"
                  )
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                controller: last_N_controller,
               
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
                  labelText: "Last Name",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: "CentraleSansRegular"
                  )
                ),
              ),
              SizedBox(height: 10,),
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
                SizedBox(height: 10,),
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
                SizedBox(height: 10,),
                  TextFormField(
                controller: emailcontroller,
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
                  labelText: "Confirm Password",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: "CentraleSansRegular"
                  )
                ),
              ),
              SizedBox(height: 20,),
              Container(
                
                child: Material(
                  
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
                          "Register",
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
                ),
              ),
                
             
             
            ],
          ),
        ),
      ),
    );
  }
}