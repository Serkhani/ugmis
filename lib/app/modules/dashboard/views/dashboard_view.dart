import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ugmis/resources/app_strings.dart';
import 'package:ugmis/resources/app_styles.dart';

import '../controllers/dashboard_controller.dart';
import 'tabs/dashboard_tabview.dart';
import 'tabs/profile.dart';
import 'tabs/system_tabview.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
          
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
          floatingActionButton: FloatingActionButton(
            onPressed: ()=>controller.floatingActionClicked()
            ,
          ),
        ),
      ),
    );
  }
  }
