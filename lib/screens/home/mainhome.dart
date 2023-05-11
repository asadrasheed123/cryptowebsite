import 'package:cryptowebsite/screens/home/topnavigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../style/RoundedButton.dart';
import '../style/style.dart';
class mainhome extends StatefulWidget {
  const mainhome({Key? key}) : super(key: key);

  @override
  State<mainhome> createState() => _mainhomeState();
}

class _mainhomeState extends State<mainhome> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(

body: SingleChildScrollView(
  child: Container(
    child: Column( mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start, children: [

      DesktopNavBar(),
      Container(height: 720,width: 1700, color: Color(0xff0A183D),

        child: Padding(
          padding: const EdgeInsets.only(right: 200),
          child: Column(children: [
            SizedBox(height: 100,),


            Row(
              children: [
                SizedBox(width: 620,),
                Text(
                  "Money",style: TextStyle(color: Colors.pink,fontWeight: FontWeight.w600,fontSize: 40,fontStyle: FontStyle.italic),

                ),
                SizedBox(width: 5,),

                Text(
                  "for",
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 40,fontStyle: FontStyle.italic),
                ),
                SizedBox(width: 5,),

                Text(
                  "everyone",
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 40,fontStyle:FontStyle.italic),

                ),
              ],
            ),
            SizedBox(height: 20,),
            Padding(padding: EdgeInsets.only(left: 180),
              child: Text(
                "Get paid in USD & Bitcoin by simply watching ads on our website - a simple and ",
                style: TextStyle(color: Colors.white,fontSize: 20,),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 170,top: 10),
              child: Text(
                " an easy way to earn money and cryptocurrency while enjoying online contents!.",
                style: TextStyle(color: Colors.white,fontSize: 20,),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 48.0,
                vertical: 16.0,
              ),
              child: Row(
                children: [
                  SizedBox(width: 500,),
                  RoundedButton(
                    color: Color(0xffFC0254),
                    textTitle: "How it Works",
                  ),
                  RoundedButton(
                    color: Color(0xff383B70),
                    textTitle: "Join free",
                  ),
                ],
              ),

            ),

Stack(
  children: [

    Padding(padding: EdgeInsets.only(left: 250),child: Image.asset('images/mainlogo2.png')),
    Positioned(top: 110,left: 620,child:  Image.asset('images/webmoney1.png',scale: 2,),),

  ],
),

            



          ],),
        ),

      ),
      //Unlimited Access
      Container(
       // height: size.height * 0.74,
        height: 800,
        width: size.width,
        color: Colors.white,
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              width: size.width / 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26.0),
                child: Wrap(
                  children: [
                    Text(
                      "A Bitcoin Advertising Network",
                      style: ThemText.bigTextTitle,
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: size.width / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Wrap(
                    children: [
                      Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Image.asset('images/adver.png')
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Center(
                    child: RoundedButton(

                      color: Color(0xffF24854),
                      textTitle: "try it now",
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),

      //How it works
      Container(
        height: size.height * 0.86,
        width: size.width,
        color: Color(0xff0A183D),
        child: Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size.width * 0.46,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "How it works",
                    style: ThemText.whititleText,
                  ),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),

              Container(height: 500,child: Center(child: Image.asset('images/howworks.jpg')))
            ],
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
