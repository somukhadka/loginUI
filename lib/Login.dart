import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Widget _buildEmailTF(){
    
    return Container(
                     alignment: Alignment.centerLeft,
                     decoration:  BoxDecoration(
                                color: Color(0xFF6CA8F1),
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 6.0,
                                    offset: Offset(0, 2),),
                                                   ],),
                    height: 60.0,
                     child: TextField(keyboardType: TextInputType.emailAddress,
                     obscureText: true,
                     style: TextStyle(color:Colors.black,
                     fontFamily: "openSans"),
                     decoration: InputDecoration(
                       border: InputBorder.none,
                       contentPadding: EdgeInsets.only(top: 14),
                       prefixIcon: Icon(
                         Icons.lock,
                         color: Colors.black,
                       ),

                       hintText: "Enter you password",
                      
                ),   
               ),
           );
           
  }
  Widget _buildForgotPasswordBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => print('Forgot Password Button Pressed'),
        child: Text(
          'Forgot Password?',
         style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontFamily: 'OpenSans', ),
      ),
    )
        );
  }

  Widget _buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => print('Login Button Pressed'),
        
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.black,
            letterSpacing: 1.5,
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffaabbcc),
                Color(0xFF61A4F1),
                Color(0xFF478DE0),
                Color(0xffaabbcc),

              ],
              stops: [0.1, 0.4, 0.7, 0.9],
            ),
          ),
          ),

          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 120.0,
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'SIGN IN',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontFamily: 'openSans',
                      fontWeight: FontWeight.bold,
                    ),

                  ),
                  SizedBox(
                   height: 30.0,
                   ),

                   Container(
                     alignment: Alignment.centerLeft,
                     decoration:  BoxDecoration(
                                color: Color(0xFF6CA8F1),
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 6.0,
                                    offset: Offset(0, 2),),
 ],),
                    height: 60.0,
                     child: TextField(keyboardType: TextInputType.emailAddress,
                     style: TextStyle(color:Colors.black,
                     fontFamily: "openSans"),
                     decoration: InputDecoration(
                       border: InputBorder.none,
                       contentPadding: EdgeInsets.only(top: 14),
                       prefixIcon: Icon(
                         Icons.email,
                         color: Colors.black,
                       ),

                       hintText: "Enter your email",
                      
                    
                       
                       
                       ),
                       
                       ),
                   ),

                   SizedBox(
                   height: 30.0,
                   ),
                   _buildEmailTF(),
                    
                    
                  SizedBox(
                   height: 5.0,
                   ),
                _buildForgotPasswordBtn(),
                _buildLoginBtn(),
                  
         ],
        )
      ),
    ),
  ],
  ),
  );
  }
}
