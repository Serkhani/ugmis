import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ugmis/resources/app_colors.dart';

import '../controllers/dashboard_controller.dart';

class SystemsView extends GetView<DashboardController> {
  const SystemsView({Key? key}) : super(key: key);

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
        //   children: [ListTile(
        //   onTap: () {
        //     Get.off(WebSiteView(
        //         pageUrl: "https://sakai.ug.edu.gh/portal/",
        //         controller: controller));
        //   },
        //   leading: const CircleAvatar(),
        //   title: Text("Sakai", style: Theme.of(context).textTheme.titleLarge),
        //   // subtitle: Text("Sites", style: Theme.of(context).textTheme.titleLarge),
        // ),
        // ListTile(
        //   leading: const CircleAvatar(),
        //   onTap: () {
        //     Get.off(WebSiteView(
        //         pageUrl: "https://sts.ug.edu.gh/services/",
        //         controller: controller));
        //   },
        //   title: Text("sts", style: Theme.of(context).textTheme.titleLarge),
        //   // subtitle: Text("Sites", style: Theme.of(context).textTheme.titleLarge),
        // ),
        // ListTile(
        //   onTap: () {
        //     Get.off(WebSiteView(
        //         pageUrl:
        //             "https://ienabler.ug.edu.gh/pls/prodi41/w99pkg.mi_login",
        //         controller: controller));
        //   },
        //   leading: const CircleAvatar(),
        //   title: Text("MIS web", style: Theme.of(context).textTheme.titleLarge),
        //   // subtitle: Text("Sites", style: Theme.of(context).textTheme.titleLarge),
        // ),]
      ),
    );
  }
}
