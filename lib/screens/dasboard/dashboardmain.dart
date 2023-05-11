import 'dart:math';

import 'package:animated_sidebar/animated_sidebar.dart';
import 'package:flutter/material.dart';


class dashboardmain extends StatefulWidget {
  const dashboardmain({super.key});

  @override
  State<dashboardmain> createState() => _dashboardmainState();
}

class _dashboardmainState extends State<dashboardmain> {
  int activeTab = 0;

  final List<SidebarItem> items = [
    SidebarItem(
      icon: Icons.dashboard,
      text: 'Dashboard',
      children: [
        SidebarChildItem(
          icon: Icons.web,
          text: 'Visit Website',
        ),
        SidebarChildItem(
          icon: Icons.query_stats,
          text: 'Real Time Statistics',
        ),
        SidebarChildItem(
          icon: Icons.analytics_outlined,
          text: 'Custom Statistics',
        ),
      ],
    ),
    SidebarItem(
      icon: Icons.ad_units,
      text: 'User Ads Report',
      children: [
        SidebarChildItem(
          icon: Icons.request_page,
          text: 'Ads Request',
        ),
        SidebarChildItem(
          icon: Icons.approval,
          text: 'Approved Ads',
        ),
        SidebarChildItem(
          icon: Icons.not_interested,
          text: 'Rejected Ads',
        ),
        SidebarChildItem(
          icon: Icons.done,
          text: 'Completed Ads',
        ),
      ],
    ),
    SidebarItem(
      icon: Icons.dashboard,
      text: 'User Deposit',
      children: [
        SidebarChildItem(
          icon: Icons.web,
          text: 'Deposit in Progress',
        ),
        SidebarChildItem(
          icon: Icons.query_stats,
          text: 'Successfully Deposit',
        ),

      ],
    ),
    SidebarItem(
      icon: Icons.outbond,
      text: 'User Withdrawal',
      children: [
        SidebarChildItem(
          icon: Icons.web,
          text: 'Pending Withdrawal',
        ),
        SidebarChildItem(
          icon: Icons.query_stats,
          text: 'Approved Withdrawal',
        ),
        SidebarChildItem(
          icon: Icons.analytics_outlined,
          text: 'Rejected Withdrawal',
        ),
      ],
    ),
    SidebarItem(
      icon: Icons.query_stats,
      text: 'Statistics of Ads',
      children: [
        SidebarChildItem(
          icon: Icons.report,
          text: 'Surf Ads',
        ),
        SidebarChildItem(
          icon: Icons.report,
          text: 'Window Ads',
        ),
        SidebarChildItem(
          icon: Icons.report,
          text: 'Video Ads',
        ),
      ],
    ),
    SidebarItem(
      icon: Icons.query_stats,
      text: 'User Ads View Report',
      children: [
        SidebarChildItem(
          icon: Icons.report,
          text: 'Completed 2500 Ads',
        ),
        SidebarChildItem(
          icon: Icons.report,
          text: 'Completed 5000 Ads',
        ),

      ],
    ),
    SidebarItem(
      icon: Icons.query_stats,
      text: 'Faucet Report',
      children: [
        SidebarChildItem(
          icon: Icons.report,
          text: 'Completed 2500 Ads',
        ),
        SidebarChildItem(
          icon: Icons.report,
          text: 'Completed 5000 Ads',
        ),

      ],
    ),
    SidebarItem(
      icon: Icons.query_stats,
      text: 'Admin Ads Report',
      children: [
        SidebarChildItem(
          icon: Icons.new_label,
          text: 'Youtube Video Ads',
        ),
        SidebarChildItem(
          icon: Icons.new_label,
          text: 'Facebook Video Ads',
        ),
        SidebarChildItem(
          icon: Icons.new_label,
          text: 'Create New Ads',
        ),
        SidebarChildItem(
          icon: Icons.notifications_active_rounded,
          text: 'Active Ads',
        ),
        SidebarChildItem(
          icon: Icons.airplanemode_inactive,
          text: 'Inactive Ads',
        ),
        SidebarChildItem(
          icon: Icons.surfing,
          text: 'Surf Ads',
        ),
        SidebarChildItem(
          icon: Icons.window,
          text: 'Window Ads',
        ),
        SidebarChildItem(
          icon: Icons.video_call,
          text: 'Video Ads',
        ),
        SidebarChildItem(
          icon: Icons.ad_units,
          text: 'Faucet Ads',
        ),



      ],
    ),
    SidebarItem(
      icon: Icons.dashboard,
      text: 'Admin Withdrawal',
      children: [
        SidebarChildItem(
          icon: Icons.web,
          text: 'Pending Withdrawal',
        ),
        SidebarChildItem(
          icon: Icons.query_stats,
          text: 'Successful Withdrawal',
        ),

      ],
    ),
  SidebarItem(
  icon: Icons.post_add,
  text: 'Post',
  children: [
  SidebarChildItem(
  icon: Icons.new_label,
  text: 'Add New Ads',
  ),
    SidebarChildItem(
      icon: Icons.all_inbox,
      text: 'All Ads',
    ),
  ]
  ),
    SidebarItem(
        icon: Icons.video_call,
        text: 'Media',
        children: [
          SidebarChildItem(
            icon: Icons.library_add,
            text: 'Library',
          ),

        ]
    ),
    SidebarItem(
        icon: Icons.pages,
        text: 'Pages/Headings',
        children: [
          SidebarChildItem(
            icon: Icons.done_all,
            text: 'All Pages/Headings',
          ),
          SidebarChildItem(text: 'Add New Pages/Heading', icon: Icons.add)

        ]
    ),
    SidebarItem(
        icon: Icons.rate_review,
        text: 'User Review',
        children: [
          SidebarChildItem(
            icon: Icons.pending,
            text: 'Pending Review',
          ),
          SidebarChildItem(
            icon: Icons.approval,
            text: 'Approved Review',
          ),
          SidebarChildItem(
            icon: Icons.not_interested,
            text: 'Rejected Review',
          ),
          SidebarChildItem(
            icon: Icons.delete,
            text: 'Deleted Review',
          ),

        ]
    ),
    SidebarItem(
        icon: Icons.design_services,
        text: 'Appearence',
        children: [
          SidebarChildItem(
            icon: Icons.menu,
            text: 'Menu/Headings',
          ),
          SidebarChildItem(
            icon: Icons.height,
            text: 'Header And Text Ads',
          ),
          SidebarChildItem(
            icon: Icons.border_all,
            text: 'Body And Text Ads',
          ),
          SidebarChildItem(
            icon: Icons.square_foot,
            text: 'Footer And Text Ads',
          ),
          SidebarChildItem(
            icon: Icons.arrow_right,
            text: 'Right Side Text Ads',
          ),
          SidebarChildItem(
            icon: Icons.keyboard_arrow_left,
            text: 'Left Side Text Ads',
          ),

        ]
    ),
    SidebarItem(
        icon: Icons.pan_tool_alt,
        text: 'PLugins',
        children: [
          SidebarChildItem(
            icon: Icons.install_desktop,
            text: 'Installed Plugins',
          ),
          SidebarChildItem(
            icon: Icons.add,
            text: 'Add New Plugins',
          ),


        ]
    ),
    SidebarItem(
        icon: Icons.ad_units,
        text: 'Adsense Ads',
        children: [
          SidebarChildItem(
            icon: Icons.keyboard_arrow_left,
            text: 'Left',
          ),
          SidebarChildItem(
            icon: Icons.arrow_right,
            text: 'Right',
          ),
          SidebarChildItem(
            icon: Icons.height,
            text: 'Header',
          ),
          SidebarChildItem(
            icon: Icons.border_all,
            text: 'Body',
          ),
          SidebarChildItem(
            icon: Icons.square_foot_sharp,
            text: 'footer',
          ),


        ]
    ),
    SidebarItem(
        icon: Icons.supervised_user_circle_sharp,
        text: 'Users',
        children: [
          SidebarChildItem(
            icon: Icons.verified_user,
            text: 'All Users',
          ),
          SidebarChildItem(
            icon: Icons.add,
            text: 'Add New Users',
          ),
          SidebarChildItem(
            icon: Icons.delete,
            text: 'Delete User',
          ),


        ]
    ),
    SidebarItem(
        icon: Icons.pan_tool,
        text: 'Tools',
        children: [
          SidebarChildItem(
            icon: Icons.import_export,
            text: 'Export Website',
          ),
          SidebarChildItem(
            icon: Icons.import_export,
            text: 'Import Website',
          ),


        ]
    ),



  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Row(
          children: [
            AnimatedSidebar(
              margin: const EdgeInsets.fromLTRB(16, 0, 0, 24),
              expanded: MediaQuery.of(context).size.width > 600,
              items: items,
              // use this to set the active tab if you want to control it from outside
              // combined with autoSelectedIndex set to false
              // if you don't set autoSelectedIndex to false, the widget will
              // automatically set the active tab and selected item is used only
              // to set the initial value
              selectedIndex: activeTab,
              autoSelectedIndex: false,
              onItemSelected: (index) => setState(() => activeTab = index),
              duration: const Duration(milliseconds: 500),
              frameDecoration: const BoxDecoration(
                color: Color(0xff0A183D),
                borderRadius: BorderRadius.all(Radius.circular(10)),


              ),
              minSize: 90,
              maxSize: 250,
              itemIconSize: 20,
              itemIconColor: Colors.white,
              itemHoverColor: Colors.grey.withOpacity(0.5),
              itemSelectedColor: Colors.blue.withOpacity(0.7),
              itemTextStyle: const TextStyle(color: Colors.white, fontSize: 15),
              itemSelectedBorder: const BorderRadius.all(
                Radius.circular(5),
              ),
              itemMargin: 10,
              itemSpaceBetween: 5,
              headerIcon: Icons.person_outline,
              headerIconSize: 30,
              headerIconColor: Colors.amberAccent,
              headerTextStyle: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
              headerText: ' Asad',
            ),
            Expanded(
              child: _buildPage(activeTab),
            ),
          ],
        ),

    );
  }

  //minimal version
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: Theme.of(context).scaffoldBackgroundColor,
  //     body: Row(
  //       children: [
  //         AnimatedSidebar(
  //           expanded: MediaQuery.of(context).size.width > 600,
  //           items: items,
  //           selectedIndex: activeTab,
  //           onItemSelected: (index) =>
  //               setState(() => activeTab = index),
  //           headerIcon: Icons.ac_unit_sharp,
  //           headerIconColor: Colors.amberAccent,
  //           headerText: 'Example',
  //         ),
  //         Center(
  //           child: Text(
  //             'Page: $activeTab',
  //             style: Theme.of(context).textTheme.headline3,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget _buildPage(int idx) {
    // return a page full of skeleton cards
    return Wrap(
      children: List.generate(8, (index) {
        double width = idx % 2 == 0 ? double.infinity : 500;
        int count = Random().nextInt(2) + 3;
        return Container(
            margin: const EdgeInsets.fromLTRB(24, 24, 24, 0),
            width: width,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
            ),
            // create a skeleton card
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int i = 0; i < count; i++)
                  Container(
                    width: Random().nextInt(100).toDouble() + 200,
                    height: i == 0 ? 30 : 20,
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
              ],
            ));
      }),
    );
  }
}
