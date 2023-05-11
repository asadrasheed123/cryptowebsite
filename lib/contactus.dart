import 'package:cryptowebsite/screens/home/topnavigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              DesktopNavBar(),
              SizedBox(height: 5,),
              Center(
                child: Container(width: 500,height: 600,
                  child: Card(
                    color: Color(0xff0A183D),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Contact Us',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Name',
                              hintStyle: TextStyle(color: Colors.white54),
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white54),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle: TextStyle(color: Colors.white54),
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white54),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            maxLines: 4,
                            decoration: InputDecoration(
                              hintText: 'Message',
                              hintStyle: TextStyle(color: Colors.white54),
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white54),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Send Message'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              onPrimary: Color(0xff0A183D),
                            ),
                          ),
                        ],
                      ),
                    ),
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
            ],
          ),
        ),
      ),
    );
  }
}
