import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ugmis/app/modules/dashboard/views/dashboard_tabview.dart';
import 'package:ugmis/app/modules/dashboard/views/profile.dart';
import 'package:ugmis/resources/app_colors.dart';
import 'package:ugmis/resources/app_strings.dart';
import 'package:ugmis/resources/app_styles.dart';

import 'announcement_tabview.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
          // appBar: AppBar(
          //   backgroundColor: Colors.transparent,
          //   elevation: 0.0,
          //   actions: [
          //     Container(
          //       decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //         border: Border.all(
          //             width: 3.0,
          //             strokeAlign: BorderSide.strokeAlignCenter,
          //             color: Colors.blue),
          //       ),
          //       child: IconButton(
          //         onPressed: () {
          //           controller.showProfile();
          //         },
          //         icon: const Icon(
          //           Icons.person,
          //           color: Colors.blue,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          body: const TabBarView(
            children: [
              DashboardViewTab(),
              SystemsView(),
              Profile()              
            ],
          ),
          bottomNavigationBar: TabBar(
            // padding: EdgeInsets.all(value),
            padding: const EdgeInsets.all(0),
            automaticIndicatorColorAdjustment: true,
            
            tabs: [
              Tab(
                iconMargin: const EdgeInsets.all(2.0),
                icon: Icon(Icons.dashboard_outlined,
                 color: AppStyles.inputTextLabelStyle.color,),
                child: const Text(
                  AppStrings.dashboard,
                  style: AppStyles.inputTextLabelStyle,
                ),
              ),
              Tab(
                iconMargin: const EdgeInsets.all(2.0),
                icon: Icon(Icons.settings_system_daydream_outlined, 
                color: AppStyles.inputTextLabelStyle.color,),
                child: const Text(
                  AppStrings.systems,
                  style: AppStyles.inputTextLabelStyle,
                ),
              ),
              Tab(
                iconMargin: const EdgeInsets.all(2.0),
                icon: Icon(Icons.person, 
                color: AppStyles.inputTextLabelStyle.color,),
                child: const Text(
                  AppStrings.profile,
                  style: AppStyles.inputTextLabelStyle,
                ),                
              )
            ],
          ),
        ),
      ),
    );
  }
  }
