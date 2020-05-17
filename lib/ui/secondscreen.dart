import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  goBackToPreviousScreen(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
     return Stack( 
     
   
    children: <Widget>[
          Container(
           
         
         decoration: BoxDecoration(

          image: DecorationImage(
            image: AssetImage("images/car.jpg",

              ),
            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.dstATop),
            fit: BoxFit.cover,
            
          ),
        ),),
     
      Center(  child: new Column(    children: <Widget>[
            Padding(padding: const EdgeInsets.only(bottom:350.0)),
           new SizedBox(
                        
                        width: 250.0,
                        height: 84.0,
                        child: new RaisedButton(
                          
                          
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(2.0),
                              // side: BorderSide(color: Colors.red)
                            ),
                            onPressed: ()=> debugPrint("hh"),
                           color: Color.fromRGBO(248, 221, 111, 0.90),
                            child: new Text('LIST YOUR CAR',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900,
                                fontSize: 20.0))),
           ),
           Padding(padding: const EdgeInsets.only(bottom:50.0)),
            new SizedBox(
                        
                       width: 250.0,
                        height: 84.0,
                        child: new RaisedButton(
                          
                          
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(2.0),
                              // side: BorderSide(color: Colors.red)
                            ),
                            onPressed: ()=> debugPrint("hh"),
                          color: Color.fromRGBO(248, 221, 111, 0.90),
                            child: new Text('GET A CAR ',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900,
                                fontSize: 20.0))),
             ) ]
        // child:SizedBox(
                        
        //                 width: 150.0,
        //                 height: 45.0,
        //                 child: new RaisedButton(
                          
                          
        //                     shape: new RoundedRectangleBorder(
        //                       borderRadius: new BorderRadius.circular(18.0),
        //                       // side: BorderSide(color: Colors.red)
        //                     ),
        //                     onPressed: ()=> debugPrint("hh"),
        //                    color: Color.fromRGBO(255,222,103, 1),
        //                     child: new Text('SIGN IN',
        //                         style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900,
        //                         fontSize: 20.0))),
        //               ), padding: const EdgeInsets.only(top: 500.0,left:115,right:115),),),
          
            )),
          ] 
    
    
  

    //Scaffold(
    //     appBar: AppBar(
    //       title: Text("Second Activity Screen"),
    //     ),
        // body: Center(
        //   child: RaisedButton(
        //     onPressed: () {goBackToPreviousScreen(context);},
        //     color: Colors.lightBlue,
        //     textColor: Colors.white,
        //     child: Text('Go Back To Previous Screen'),
        //   ),
        // ),
        
        

    //         // height:screenHeight *1.5,  //It will take the 20%  height of the screen
    //         //width: screenwidth *.10,
    //         //  color: Colors.black,
    //       ),
     
    //     );
          );
  }
}