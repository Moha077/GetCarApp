import 'package:flutter/material.dart';
import 'secondscreen.dart';
import 'signupscreen.dart';
import 'sign_up_screen.dart';

class DrawTriangleShape extends CustomPainter {
 
  Paint painter;
 
  DrawTriangleShape() {
 
    painter = Paint()
      ..color = Color.fromRGBO(255, 222, 103, 1)
      ..style = PaintingStyle.fill;
 
  }
  
  @override
  void paint(Canvas canvas, Size size) {
 
    var path = Path();
 
    path.moveTo(size.width/2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.height, size.width);
    path.close();
 
    canvas.drawPath(path, painter);
  }
 
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginStat();
  }
}

class LoginStat extends State<Login> {
  final TextEditingController _user_controler = new TextEditingController();
  String com = "";

  final TextEditingController _password_controler = new TextEditingController();
  void _clear() {
    setState(() {
      _user_controler.clear();
      _password_controler.clear();
    });
  }

  // void _welc() {
  //   setState(() {
  //     if (_user_controler.text.isNotEmpty &&
  //         _password_controler.text.isNotEmpty) {
  //       com = _user_controler.text;
  //     } else
  //       com = "nothing";
  //   });
  // }

  gotoSecondActivity(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecondScreen()),
    );
  }

  //signUP
  goTosignupActivity(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Signup()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return new Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromRGBO(0, 150, 254, 1),
        body: Container(
          child: Stack(
            children: <Widget>[
              Positioned(
                  right: 260.0,
                  top: 60.0,
                  child: new Container(
                     width: 300.00,
                              height: 300.00,
                              decoration: new BoxDecoration(
                             
                                //shape: BoxShape.rectangle,
                                color: Color.fromRGBO(0, 179, 255,0.88),
                                borderRadius: BorderRadius.all(
                                    const Radius.circular(200.0)),
                  )
                  ),
                  ),
                   Positioned(
                  left: 370.0,
                  top: 280.0,
                  child:CustomPaint(
                  size: Size(40, 40),
                  painter: DrawTriangleShape()
                ),),
                   Positioned(
                  left: 200.0,
                  top: 90.0,
                  child:CustomPaint(
                  size: Size(20, 20),
                  painter: DrawTriangleShape()
                ),),
                     Positioned(
                  left: 112.0,
                  top: 247.0,
                  child:Container(
                              width: 200.00,
                              height: 39.00,
                              decoration: new BoxDecoration(
                                
                               
                                color:Color.fromRGBO(255, 222, 103, 1),
                                borderRadius: BorderRadius.all(
                                    const Radius.circular(50.0)),
                            
                              ))),
              Positioned(
                  left: 320.0,
                  bottom: 60.0,
                  child: new Container(width: 300.00,
                              height: 300.00,
                              decoration: new BoxDecoration(
                             
                                //shape: BoxShape.rectangle,
                                color: Color.fromRGBO(0, 179, 255,0.88),
                                borderRadius: BorderRadius.all(
                                    const Radius.circular(200.0)),
                  ))),
              new Container(
                  alignment: Alignment.topCenter,
                  child: new ListView(
                    children: <Widget>[
                      new Padding(
                          padding: new EdgeInsets.only(
                              left: 2.0, right: 2.0, top: 150.0)),
                      //LOGO

                      new Image.asset(
                        'images/logo.png',
                        width: 120.00,
                        height: 120.0,
                        // height:screenHeight *1.5,  //It will take the 20%  height of the screen
                        //width: screenwidth *.10,
                        //  color: Colors.black,
                      ),
                      new Padding(
                          padding: new EdgeInsets.only(
                              left: 2.0, right: 2.0, top: 80.0, bottom: 2.0)),
                      new Container(
                        height: screenHeight *
                            0.33, //It will take the 20%  height of the screen
                        width: screenwidth *
                            .10, //It will take the 50% width of the screen
                        decoration: new BoxDecoration(
                            //shape: BoxShape.rectangle,
                            //  color: Colors.black,
                            ),

                        child: new Column(
                          children: <Widget>[
                            //UssSER NAME
                            new Padding(
                                padding: new EdgeInsets.only(
                                    left: 2.0,
                                    right: 2.0,
                                    top: 2.0,
                                    bottom: 40.0)),
                            new Container(
                              width: 300.00,
                              height: 49.00,
                              decoration: new BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 100),

                                    blurRadius:
                                        15.0, // has the effect of softening the shadow
                                    spreadRadius:
                                        -20.0, // has the effect of extending the shadow
                                    offset: Offset(
                                      6.0, // horizontal, move right 10
                                      20.0, // vertical, move down 10
                                    ),
                                  )
                                ],
                                //shape: BoxShape.rectangle,
                                color: Color.fromRGBO(0, 170, 255, 50),
                                borderRadius: BorderRadius.all(
                                    const Radius.circular(50.0)),
                                // border: new Border.all(
                                //   //color: Colors.white,
                                //   width: 00,
                                // ),
                              ),
                              child: new TextField(
                                style: TextStyle(color: Colors.white),

                                //textAlign: TextAlign.center,
                                controller: _user_controler,

                                decoration: new InputDecoration(
                                  hintText: "Email",
                                  hintStyle: TextStyle(
                                    color: Colors.white,
                                  ),
                                  border: InputBorder.none,

                                  icon: new Icon(
                                    Icons.person,
                                    color: Colors.white,
                                  ),
                                  //  border: new OutlineInputBorder(
                                  // borderRadius: const BorderRadius.all(
                                  //  const Radius.circular(5.0),
                                  //  ),1
                                  //   borderSide: new BorderSSide(
                                  //     color: Colors.black,
                                  //      width: 5.0,
                                  //    ),
                                  // ),
                                ),
                              ),
                            ),
                            //password

                            Padding(
                                padding: const EdgeInsets.only(bottom: 42.0)),

                            new Container(
                              width: 300.00,
                              height: 50.00,
                              decoration: new BoxDecoration(
                                  color: Color.fromRGBO(0, 170, 255, 50),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 100),

                                      blurRadius:
                                          15.0, // has the effect of softening the shadow
                                      spreadRadius:
                                          -20.0, // has the effect of extending the shadow
                                      offset: Offset(
                                        6.0, // horizontal, move right 10
                                        20.0, // vertical, move down 10
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.all(
                                      const Radius.circular(50.0))),
                              //passwordddd
                              child: new TextField(
                                style: TextStyle(color: Colors.white),
                                obscureText: true,
                                controller: _password_controler,
                                decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.white),
                                  hintText: "**********",
                                  icon:
                                      new Icon(Icons.lock, color: Colors.white),

                                  //           border: OutlineInputBorder(
                                  // borderRadius: BorderRadius.circular(15.0),),
                                  //  border: new OutlineInputBorder(
                                  // borderRadius: const BorderRadius.all(
                                  //  const Radius.circular(5.0),
                                  //  ),
                                  //   borderSide: new BorderSSide(
                                  //     color: Colors.black,
                                  //      width: 5.0,
                                  //    ),
                                  // ),
                                ),
                              ),
                            ),
                            new Padding(padding: new EdgeInsets.all(10.0)),
                            new MaterialButton(
                              onPressed: () => {},
                              child: Text('Forgot password ?'),
                            )
                          ],
                        ),
                      ),

                      new Center(
                          child: new Column(
                        children: <Widget>[
                          //button

                          new SizedBox(
                            width: 150.0,
                            height: 45.0,
                            child: new RaisedButton(
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(18.0),
                                  // side: BorderSide(color: Colors.red)
                                ),
                                onPressed: () {
                                  gotoSecondActivity(context);
                                },
                                color: Color.fromRGBO(255, 222, 103, 1),
                                child: new Text('SIGN IN',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20.0))),
                          ),
                          Padding(padding: const EdgeInsets.only(bottom: 50.0)),
                          new SizedBox(
                            width: 250.0,
                            height: 45.0,
                            //    height:screenHeight * .0.5,  //It will take the 20%  height of the screen
                            //  width: screenwidth * .5,  //It will take the 50% width of the screen
                            child: new RaisedButton(
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(18.0),

                                  // side: BorderSide(color: Colors.red)
                                ),
                                onPressed: () {
                                  goTosignupActivity(context);
                                },
                                color: Color.fromRGBO(255, 222, 103, 1),
                                child: new Text(
                                  'SIGN UP',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20.0),
                                )),
                          ),
                        ],
                      ))
                    ],
                  ))
            ],
          ),
        ));
  }
}
