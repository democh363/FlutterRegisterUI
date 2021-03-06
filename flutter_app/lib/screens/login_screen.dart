import 'package:flutter/material.dart';
import 'package:flutter_app/utilities/constants.dart';
import 'package:flutter_app/StringValues/stringValues.dart';

class LoginScreenState extends StatefulWidget {
  @override
  _LoginScreenStateState createState() => _LoginScreenStateState();
}

class _LoginScreenStateState extends State<LoginScreenState> {

	bool _rememberMe = false;

  Widget _buildEmailTF()
  {
		return Column(
				crossAxisAlignment: CrossAxisAlignment.start,
				children:<Widget>[
					Text(
						eMailText,
						style: kLabelStyle,
					),
					SizedBox(height: 10.0),
					Container(
						alignment: Alignment.centerLeft,
						decoration: kBoxDecorationStyle,
						height: 60.0,
						child: TextField(
							keyboardType: TextInputType.emailAddress,
							style: TextStyle(
								color:Colors.white,
								fontFamily: customFontFamiliy),
							decoration: InputDecoration(
								border:InputBorder.none,
								contentPadding: EdgeInsets.only(top:14.0),
								prefixIcon: Icon(
									Icons.email,
									color: Colors.white,
								),
								hintText: eMailTextHint,
								hintStyle: kHintTextStyle,
							),
						),
					),
				],
			);
  }

Widget _buildPasswordTF()
  {
		return Column(
				crossAxisAlignment: CrossAxisAlignment.start,
				children:<Widget>[
					Text(
						passWordText,
						style: kLabelStyle,
					),
					SizedBox(height: 10.0),
					Container(
						alignment: Alignment.centerLeft,
						decoration: kBoxDecorationStyle,
						height: 60.0,
						child: TextField(
							obscureText: true,
							keyboardType: TextInputType.emailAddress,
							style: TextStyle(
								color:Colors.white,
								fontFamily: customFontFamiliy,
								),
							decoration: InputDecoration(
								border:InputBorder.none,
								contentPadding: EdgeInsets.only(top:14.0),
								prefixIcon: Icon(
									Icons.lock,
									color: Colors.white,
								),
								hintText: passWordTextHint,
								hintStyle: kHintTextStyle,
							),
						),
					),
				],
			);
  }

	Widget _buildForgotPasswordBtn()
	{
		return Container(
			alignment: Alignment.centerRight,
			child: FlatButton(
				onPressed: () => print("Forgot Password Button Pressed"),
				padding: EdgeInsets.only(right:0.0),
				child: Text(
				  forgotPasswordText,
					style:kLabelStyle,
				),
			),
		);
	}

 Widget _buildRememberMeCheckBox()
 {
		return Container(
			height:20.0,
			child:Row(
					children: <Widget>[
						Theme(
							data: ThemeData(unselectedWidgetColor: Colors.white),
							child:Checkbox(
								value: _rememberMe,
								checkColor: Colors.green,
								activeColor: Colors.white,
								onChanged:(value) {
									setState(() {
										_rememberMe = value;
									});
								} ,)
						),
						Text(
							rememberMeText,
							style:kLabelStyle,
						),
					],
				),
		);
 }

 Widget _buildLoginBtn()
 {
		return Container(
			padding: EdgeInsets.symmetric(vertical:25.0),
			width: double.infinity,
			child:RaisedButton(
				elevation: 5.0,
				onPressed: () => print("Login Button Pressed"),
				padding: EdgeInsets.all(15.0),
				shape: RoundedRectangleBorder(
					borderRadius: BorderRadius.circular(30.0),
				),
				color: Colors.white,
				child: Text(
					loginText,
					style:TextStyle(
						color:Color(0xFF527DAA),
						letterSpacing: 1.5,
						fontSize: 18.0,
						fontWeight: FontWeight.bold,
						fontFamily: customFontFamiliy)),
			),
		);
 }

Widget _buildSignInWithText()
{
		return Column(
			children: <Widget>[
				Text(
					'- OR -',
					style: TextStyle(
						color: Colors.white,
						fontWeight: FontWeight.w400,
					),
				),
				SizedBox(height: 20.0),
				Text('Sign in with',style:kLabelStyle),
			],
		);
}


Widget _buildSignIn()
{
  return GestureDetector(
        onTap:() => print('Sign up Button Pressed'),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text:haveNotAccoundText,
                style:TextStyle(
                  color:Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text:signInText,
                style:TextStyle(
                  color:Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              height:double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin:Alignment.topCenter,
                    end:Alignment.bottomCenter,
                    colors:[
                      Color(0xFF73AEF5),
                      Color(0xFF61A4F1),
                      Color(0xFF478DE0),
                      Color(0xFF398AE5),
                    ],
                    stops: [0.1,0.4,0.7,0.9],
                  ),

              ),
            ),
            Container(
              height: double.infinity,
              child: SingleChildScrollView(
                physics:AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal:40.0,
                  vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 65.0),
                      Text(
                        appName,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily:customFontFamiliy,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      _buildEmailTF(),
											SizedBox(height: 30.0),
											_buildPasswordTF(),
											_buildForgotPasswordBtn(),
											_buildRememberMeCheckBox(),
											_buildLoginBtn(),
											//_buildSignInWithText(),
                      _buildSignIn(),
                    ],
                  ),
                ),
            )
          ],
          ),
    );
  }
}