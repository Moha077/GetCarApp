import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  goBackToPreviousScreen(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
   // final screenHeight = MediaQuery.of(context).size.height;
    //final screenwidth = MediaQuery.of(context).size.width;
    return new Scaffold(
        resizeToAvoidBottomInset: false,
        body: new Container(child: Stack(
          children: <Widget>[  
            
            Container(
         decoration: BoxDecoration(

          image: DecorationImage(
            image: AssetImage("images/signup.jpg",

              ),
            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.dstATop),
            fit: BoxFit.cover,
            
          ),
        ),),
//         Positioned(child: Container(
       
// //image have posted here 
         
//             AssetImage("images/signup.jpg")

//               ),),
           Center(
        child:Container(  
          
          width: 320.00,
          
              height: 400.00,
              decoration: new BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.all(const Radius.circular(15.0)),
              ),child: Column(children: <Widget>[
             Container(margin: const EdgeInsets.only(left:1.0,right: 30.0),width: 220.0,
                  child:
                  
                  TextField(autofocus: false,cursorColor: Colors.amber,style: TextStyle(height: 2.0, )
                  ,cursorWidth: 2.0,
                   decoration: new InputDecoration(
                                  hintText: "First Name",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                

                                 
                               
                                ),),
                  ),
                Container(margin: const EdgeInsets.only(left:1.0,right: 30.0),width: 220.0,
                  child:
                  
                  TextField(autofocus: false,cursorColor: Colors.amber,style: TextStyle(height: 2.0, )
                  ,cursorWidth: 2.0,
                   decoration: new InputDecoration(
                                  hintText: "Last Name",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                

                                 
                               
                                ),),
                  ),
                Container(margin: const EdgeInsets.only(left:1.0,right: 30.0),width: 220.0,
                  child:
                  
                  TextField(autofocus: false,cursorColor: Colors.amber,style: TextStyle(height: 2.0, )
                  ,cursorWidth: 2.0,
                   decoration: new InputDecoration(
                                  hintText: "Email",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                

                                 
                               
                                ),),
                  ),
                Container(margin: const EdgeInsets.only(left:1.0,right: 30.0),width: 220.0,
                  child:
                  
                  TextField(autofocus: false,cursorColor: Colors.amber,style: TextStyle(height: 2.0, )
                  ,cursorWidth: 2.0,
                   decoration: new InputDecoration(
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                

                                 
                               
                                ),),
                  ),
                Container(margin: const EdgeInsets.only(left:1.0,right: 30.0),width: 220.0,
                  child:
                  
                  TextField(autofocus: false,cursorColor: Colors.amber,style: TextStyle(height: 2.0, )
                  ,cursorWidth: 2.0,
                   decoration: new InputDecoration(
                                  hintText: "Confirm Password",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                

                                 
                               
                                ),),
                  ),
                  Container(margin: const EdgeInsets.only(left:1.0,right: 30.0),width: 220.0,
                  child:
                  
                  TextField(autofocus: false,cursorColor: Colors.amber,style: TextStyle(height: 2.0, )
                  ,cursorWidth: 2.0,
                   decoration: new InputDecoration(
                                  hintText: "Phone",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                

                                 
                               
                                ),),
                  ),
                Container(
                  margin: const EdgeInsets.only(left:15.0,right: 30.0,top:10.0),width: 240.0,
                
                  child:
                   Row(
                     
                      children: <Widget>[
                        new Text('Genre',
                        style: new TextStyle(fontSize: 15.0,color: Colors.grey,),),
                        new Text('    ',
                        style: new TextStyle(fontSize: 15.0),),
                        new Radio(
                          value: 0,
                          groupValue: null,
                          onChanged: null,
                        ),
                       
                        new Text(
                          'man',
                          style: new TextStyle(fontSize: 14.0),
                        ),
                        new Radio(
                          value: 1,
                          groupValue: null,
                          onChanged: null,
                        ),
                        new Text(
                          'women',
                          style: new TextStyle(
                            fontSize: 14.0,
                          ),
                      ),
                       ] )
              ),
              ],),
              
              )
    
   )
        
        ]
        )
        )
        
        );
  }
}
