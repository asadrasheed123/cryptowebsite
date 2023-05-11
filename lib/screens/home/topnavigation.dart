import 'package:cryptowebsite/contactus.dart';
import 'package:cryptowebsite/screens/auth/login.dart';
import 'package:cryptowebsite/screens/auth/register.dart';
import 'package:cryptowebsite/screens/home/mainhome.dart';
import 'package:flutter/material.dart';
import 'package:hover_menu/hover_menu.dart';
import 'package:window_style_dropdown_menu/window_style_dropdown_menu.dart';

import '../../webhover.dart';
import '../style/style.dart';


class DesktopNavBar extends StatefulWidget {
  @override
  _DesktopNavBarState createState() => _DesktopNavBarState();
}

class _DesktopNavBarState extends State<DesktopNavBar> {
  String? dropdownValue = 'View Ads';
  String? dropdownValu = 'Support';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      color: Color(0xff08192D),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      Text(
                        "Click".toUpperCase(),
                        style: ThemText.titlePinkText,
                      ),
                      Text("Payer".toUpperCase(),
                          style: ThemText.titleWhiteText)
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => mainhome()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 10.0,
                      ),
                      child: Text("Home", style: ThemText.navBarWhiteTab),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 10.0,
                      ),
                      child: Text("Advertise", style: ThemText.navBarWhiteTab),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 10.0,
                      ),
                      child: Text("Faucet", style: ThemText.navBarWhiteTab),
                    ),
                  ),





        TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 10.0,
                      ),
                      child: Text("Article", style: ThemText.navBarWhiteTab),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},


                      child: Text("Affiliate", style: ThemText.navBarWhiteTab),

                  ),
                  WindowStyleDropdownMenu(
                    dropdownBackgroundColor: Colors.transparent,
                    buttonTitleStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      letterSpacing: 2.75,
                    ),
                    dropdownWidth: 160,
                    buttonTitle: 'View Ads',
                    dropdownItems: const [
                      ListTile(
                        dense: true,
                        contentPadding: EdgeInsets.only(right: 30),
                        title: Text(
                          'Video Ads',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                      ListTile(
                        dense: true,
                        contentPadding: EdgeInsets.only(right: 30),
                        title: Text(
                          'Surf Ads',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                      ListTile(
                        dense: true,
                        contentPadding: EdgeInsets.only(right: 30),
                        title: Text(
                          'Facebook Video Ads',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                      ListTile(
                        dense: true,
                        contentPadding: EdgeInsets.only(right: 30),
                        title: Text(
                          'Article',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                      ListTile(
                        dense: true,
                        contentPadding: EdgeInsets.only(right: 30),
                        title: Text(
                          'Window Ads',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),



                ],
              ),
            ),

            Flexible(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Container(
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => login()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text("Login", style: TextStyle(color: Colors.white,
                              fontSize: 16.0,
                              letterSpacing: 2.75,),),
                          ),
                        ),
                        Container(color: Colors.white,height: 30,width: 2,),
                        WindowStyleDropdownMenu(dropdownBackgroundColor: Colors.transparent,
                          buttonTitleStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 17),
                          dropdownWidth: 130,
                          buttonTitle: 'Help',
                          dropdownItems: const [
                            ListTile(contentPadding: EdgeInsets.only(right: 30),
                              mouseCursor: SystemMouseCursors.click,

                              title: Text(
                                'Support',
                                style: TextStyle(color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 2.75,),
                              ),
                            ),

                          ],
                        ),


                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => register()),
                      );
                    },
                    child: Text(
                      "Create an account",
                      style: ThemText.createAccountPinkText,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[800],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.sunny, color: Colors.amberAccent),
                          SizedBox(width: 5),
                          Text("NIGHT", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
