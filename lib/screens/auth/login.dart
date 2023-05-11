import 'package:cryptowebsite/screens/dasboard/dashboardmain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slider_captcha/slider_capchar.dart';

import '../home/topnavigation.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final SliderController controller = SliderController();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(children: [
            DesktopNavBar(),
            SizedBox(height: 50,),
            Container(width: 500,height: 500,
              child: Card(elevation: 5,
                color: Color(0xff0A183D),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30,),
                      Center(child: Text("Login To Your Account",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
                      SizedBox(height: 30,),


                      SizedBox(height: 30,),
                      Text("Email",style: TextStyle(color: Colors.white,fontSize: 20),),
                      SizedBox(height: 20,),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[100],


                        ),
                      ),
                      SizedBox(height: 30,),
                      Text("Password",style: TextStyle(color: Colors.white,fontSize: 20),),
                      SizedBox(height: 20,),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[100],


                        ),
                      ),
                      SizedBox(height: 30,),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => dashboardmain()),
                          );
                        },
                        child: Center(
                          child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightBlue,),
                            width: 190,height: 45,
                            child: Center(child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),

                          ),
                        ),
                      )




                    ],),
                ),
              ),
            ),







            Divider(height: 0.3,),
            Container(
              color: Color(0xff0A183D),width: double.infinity,height: 350,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 80,left: 80),
                    child: Column(children: [

                      Text("About",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),),
                      SizedBox(height: 20,),
                      Text("About Us",style: TextStyle(color: Colors.grey,fontSize: 15),),
                      SizedBox(height: 20,),
                      Text("Help",style: TextStyle(color: Colors.grey,fontSize: 15),),
                      SizedBox(height: 20,),
                      Text("Privacy Policy",style: TextStyle(color: Colors.grey,fontSize: 15),),
                      SizedBox(height: 20,),
                      Text("Terms of Service",style: TextStyle(color: Colors.grey,fontSize: 15),),
                      SizedBox(height: 20,),
                      Text("Affiliate",style: TextStyle(color: Colors.grey,fontSize: 15),),


                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80,left: 80),
                    child: Column(children: [

                      Text("Information",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),),
                      SizedBox(height: 20,),
                      Text("Subscription",style: TextStyle(color: Colors.grey,fontSize: 15),),
                      SizedBox(height: 20,),

                      Text("User Review",style: TextStyle(color: Colors.grey,fontSize: 15),),
                      SizedBox(height: 20,),
                      Text("Calculator",style: TextStyle(color: Colors.grey,fontSize: 15),),
                      SizedBox(height: 20,),
                      Text("Video Guide",style: TextStyle(color: Colors.grey,fontSize: 15),),
                      SizedBox(height: 20,),
                      Text("Payment Proof",style: TextStyle(color: Colors.grey,fontSize: 15),),



                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80,left: 80),
                    child: Column(children: [

                      Text("Community",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),),
                      SizedBox(height: 20,),
                      Row(children: [
                        SvgPicture.asset(
                          'icon/article.svg',
                          semanticsLabel: 'My SVG Image',
                          width: 20,
                          height: 20,color: Colors.grey,
                        ),
                        SizedBox(width: 10,),
                        SvgPicture.asset(
                          'icon/telegram.svg',
                          semanticsLabel: 'My SVG Image',
                          width: 20,
                          height: 20,color: Colors.grey,
                        ),
                        SizedBox(width: 10,),
                        SvgPicture.asset(
                          'icon/youtube.svg',
                          semanticsLabel: 'My SVG Image',
                          width: 20,
                          height: 20,color: Colors.grey,
                        ),
                        SizedBox(width: 10,),
                        SvgPicture.asset(
                          'icon/twitter.svg',
                          semanticsLabel: 'My SVG Image',
                          width: 20,
                          height: 20,color: Colors.grey,
                        ),
                        SizedBox(width: 10,),
                        SvgPicture.asset(
                          'icon/facebook.svg',
                          semanticsLabel: 'My SVG Image',
                          width: 20,
                          height: 20,color: Colors.grey,
                        ),






                      ],),


                    ],),
                  ),


                ],
              ),
            ),




          ],),
        ),
      ),

    );
  }
}
