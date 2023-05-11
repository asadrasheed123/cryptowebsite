import 'package:cryptowebsite/screens/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slider_captcha/slider_capchar.dart';

import '../home/topnavigation.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
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
            Container(width: 500,height: 950,
              child: Card(elevation: 5,
                color: Color(0xff0A183D),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    SizedBox(height: 30,),
                    Center(child: Text("Create Account",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
                      SizedBox(height: 30,),
                      Text("Username",style: TextStyle(color: Colors.white,fontSize: 20),),
                      SizedBox(height: 20,),
                  TextField(
                  decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[100],


                ),
              ),


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
                      Text("Repeat Password",style: TextStyle(color: Colors.white,fontSize: 20),),
                      SizedBox(height: 20,),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[100],


                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(color: Colors.white,
                            child: Checkbox(
                              value: true,
                              onChanged: null,
                            ),

                          ),
                          SizedBox(width: 20,),
                          Text(
                            "I agree to the terms and conditions",
                            style: TextStyle(fontSize: 16,color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(height: 40,width: 200,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.deepOrangeAccent,),
                            child: Center(child: Text('GoogleRecaptcha',style: TextStyle(color: Colors.white,fontSize: 20),)),
                          ),
                          Container(height: 40,width: 200,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.deepOrangeAccent,),
                            child: Center(child: Text('QbkRecaptcha',style: TextStyle(color: Colors.white,fontSize: 20),)),
                          ),

                        ],
                      ),
                      SizedBox(height: 30,),
                      SizedBox(width: 250,height:180,
                        child: SliderCaptcha(imageToBarPadding: 10,
                          captchaSize: 5,
                          titleStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                          title: 'Slide to Authenticate',
                          controller: controller,
                          image: Image.network(
                            'https://th.bing.com/th/id/OIP.Zpg2qJQu0fICDVNit2v4jgHaEK?pid=ImgDet&rs=1',
                            fit: BoxFit.fitWidth,
                          ),
                          colorBar: Color(0xff0A183D),
                          colorCaptChar: Colors.blue,
                          icon: Icon(Icons.lock),
                          onConfirm: (value) async {
                            debugPrint(value.toString());
                            return await Future.delayed(const Duration(seconds: 5)).then(
                                  (value) {
                                controller.create.call();
                              },
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(onTap: () {
                        Navigator.pushReplacement(
                          context,MaterialPageRoute(builder: (context) => login()),);
                      },
                        child: Center(
                          child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightBlue,),
                            width: 170,height: 40,
                            child: Center(child: Text("Register",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),

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
