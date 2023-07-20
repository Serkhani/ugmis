import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../controllers/dashboard_controller.dart';
import 'models/webview.dart';

class SystemsView extends GetView<DashboardController> {
  SystemsView({Key? key}) : super(key: key);
  final webController = Completer<WebViewController>();


  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // children: ["MIS", "STS", "SAKAI"]
        //     .map(
        //       (e) => Padding(
        //         padding: const EdgeInsets.all(12.0),
        //         child: ListTile(
        //           tileColor: AppColors.greyLight,
        //           title: Text(e),
        //           trailing: const Icon(Icons.arrow_forward_sharp),
        //         ),
        //       ),
        //     )
        //     .toList(),
          children: [ListTile(
          onTap: () {
            Get.off(WebSiteView(
                pageUrl: "https://sakai.ug.edu.gh/portal/",
                controller: webController));
          },
          leading: const CircleAvatar(),
          title: Text("Sakai", style: Theme.of(context).textTheme.titleLarge),
          // subtitle: Text("Sites", style: Theme.of(context).textTheme.titleLarge),
        ),
        ListTile(
          leading: const CircleAvatar(),
          onTap: () {
            Get.off(WebSiteView(
                pageUrl: "https://sts.ug.edu.gh/services/",
                controller: webController));
          },
          title: Text("sts", style: Theme.of(context).textTheme.titleLarge),
          // subtitle: Text("Sites", style: Theme.of(context).textTheme.titleLarge),
        ),
        ListTile(
          onTap: () {
            Get.off(WebSiteView(
                pageUrl:
                    "https://ienabler.ug.edu.gh/pls/prodi41/w99pkg.mi_login",
                controller: webController));
          },
          leading: const CircleAvatar(),
          title: Text("MIS web", style: Theme.of(context).textTheme.titleLarge),
          // subtitle: Text("Sites", style: Theme.of(context).textTheme.titleLarge),
        ),]
      ),
    );
  }
}
