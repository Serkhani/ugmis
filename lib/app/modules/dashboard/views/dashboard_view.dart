import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ugmis/app/modules/dashboard/views/dashboard_tabview.dart';
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
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            actions: [
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        width: 3.0,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Colors.blue)),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
          body: const TabBarView(
            children: [
              DashboardViewTab(),
              SystemsView(),
            ],
          ),
          bottomNavigationBar: const TabBar(
            tabs: [
              Tab(
                child: Text(
                  AppStrings.dashboard,
                  style: AppStyles.inputTextLabelStyle,
                ),
              ),
              Tab(
                child: Text(
                  AppStrings.upcomingEvents,
                  style: AppStyles.inputTextLabelStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return DefaultTabController(
  //     initialIndex: 1,
  //     length: 2,
  //     child: Scaffold(
  //       appBar:
  //         // backgroundColor: Colors.blueGrey.shade500,
  //         // title: Text(''),
  //          TabBar(
  //           tabs: [
  //             Tab(
  //               // text:
  //               child: Text(
  //                 AppStrings.dashboard,
  //                 style: AppStyles.inputTextLabelStyle,
  //               )
  //               ),
  //             //child: Image.asset('images/android.png'),

  //             Tab(
  //               child: Text(
  //                 AppStrings.announcement,
  //                 style: AppStyles.inputTextLabelStyle,
  //               )
  //             ),
  //           ],
  //         ),

  //       body: TabBarView(
  //         children: [
  //           Center(
  //               child: Text(
  //             'This is Cake Tab',
  //             style: TextStyle(fontSize: 32),
  //           )),
  //           Center(
  //               child: Text(
  //             'This is Radio Tab',
  //             style: TextStyle(fontSize: 32),
  //           )),

  //         ],
  //       ),
  //     ),
  //   );
  // }
}
