import 'dart:developer';

import 'package:admin/feature/sidemenubar/presentation/provider/provider.dart';
import 'package:admin/go_route.dart/route_config.dart';
import 'package:admin/go_route.dart/route_names.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class _RouteMenuItem {
  final String route;
  final Widget icon;
  final String title;

  const _RouteMenuItem(this.route, this.icon, this.title);
}

class SideNavigationBar extends StatefulWidget {
  const SideNavigationBar({super.key, required this.child});
  final Widget child;

  @override
  State<SideNavigationBar> createState() => _SideNavigationBarState();
}

class _SideNavigationBarState extends State<SideNavigationBar> {
  late SideMenuController sideMenuController;

  final PageStorageBucket _bucket = PageStorageBucket();

  @override
  void initState() {
    sideMenuController = SideMenuController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      RouteConfig.approute.routerDelegate.addListener(_handleRouteChange);
      _handleRouteChange();
    });

    super.initState();
  }

  void _handleRouteChange() {
    final location = RouteConfig.approute.state.uri.path;

    final staticRoutes = [
      RouteNames.dashboard,
      RouteNames.tracking,
      RouteNames.lead,
      RouteNames.followup,
      RouteNames.activities,
      RouteNames.sales,
      RouteNames.students,
      RouteNames.fee,
      RouteNames.courses,
      RouteNames.contents,
      RouteNames.integration,
      RouteNames.alert,
      
    ];

    int? routeIndex;
    for (int i = 0; i < staticRoutes.length; i++) {
      final route = staticRoutes[i];
      if (location.startsWith(route)) {
        routeIndex = i;
        break;
      }
    }

    if (routeIndex != null && sideMenuController.currentPage != routeIndex) {
      log(routeIndex.toString());
      sideMenuController.changePage(routeIndex);

      // Provider update
      final sidebar = Provider.of<SidebarProvider>(context, listen: false);
      sidebar.changeMenu(routeIndex);
    }
  }

  @override
  void dispose() {
    RouteConfig.approute.routerDelegate.removeListener(_handleRouteChange);
    sideMenuController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final sidebar = Provider.of<SidebarProvider>(context);

    final routeMenuMap = [
      _RouteMenuItem(
        RouteNames.dashboard,
        Image.asset("assets/Icons/admin_dash.png", width: 20, height: 20),
        'Dashboard',
      ),
      _RouteMenuItem(
        RouteNames.tracking,
        Image.asset("assets/Icons/location-tracking.png", width: 20, height: 20),
        'Live Tracking',
      ),
      _RouteMenuItem(
        RouteNames.lead,
        Image.asset("assets/Icons/lead.png", width: 20, height: 20),
        'Lead Management',
      ),
      _RouteMenuItem(
        RouteNames.followup,
        Image.asset("assets/Icons/followup.png", width: 20, height: 20),
        'Follow Ups',
      ),
      _RouteMenuItem(
        RouteNames.activities,
        Image.asset("assets/Icons/activity.png", width: 20, height: 20),
        'Employee Activities',
      ),
      _RouteMenuItem(
        RouteNames.sales,
        Image.asset("assets/Icons/sale.png", width: 20, height: 20),
        'Sales Executives',
      ),
      _RouteMenuItem(
        RouteNames.students,
        Image.asset("assets/Icons/students.png", width: 20, height: 20),
        'Students / Clients',
      ),
      _RouteMenuItem(
        RouteNames.fee,
        Image.asset("assets/Icons/fee.png", width: 20, height: 20),
        'Fee Overview',
      ),
      _RouteMenuItem(
        RouteNames.courses,
        Image.asset("assets/Icons/courses.png", width: 20, height: 20),
        'Courses & Fee Structure',
      ),
      _RouteMenuItem(
        RouteNames.contents,
        Image.asset("assets/Icons/settings.png", width: 20, height: 20),
        'Contents',
      ),
      _RouteMenuItem(
        RouteNames.integration,
        Image.asset("assets/Icons/integration.png", width: 20, height: 20),
        'Integration',
      ),
      _RouteMenuItem(
        RouteNames.alert,
        Image.asset("assets/Icons/notification.png", width: 20, height: 20),
        'Alert & Notices',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.black87,
      body: Row(
        children: [
          Container(
            width: 250,
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(color: Colors.grey.shade300, width: 1.7),
              ),
            ),
            child: SideMenu(
              controller: sideMenuController,
              alwaysShowFooter: true,
              style: SideMenuStyle(
                itemHeight: 39,
                itemOuterPadding: const EdgeInsets.all(5),
                itemBorderRadius: BorderRadius.circular(18),
                selectedColor: const Color(0xff0D4965),
                selectedTitleTextStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
                unselectedTitleTextStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                backgroundColor: Colors.white,
              ),
              title: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/logos/company_logo.png",
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              items: List.generate(routeMenuMap.length, (index) {
                final menuItem = routeMenuMap[index];

                return SideMenuItem(
                  iconWidget: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      sidebar.selectedIndex == index
                          ? Colors.white
                          : const Color(0xff0D4965),
                      BlendMode.srcIn,
                    ),
                    child: menuItem.icon,
                  ),
                  title: menuItem.title,
                  onTap: (i, _) {
                    sidebar.changeMenu(i);
                    setcurrentSideMenuTab(i, context);
                  },
                );
              }),
            ),
          ),
          Expanded(
            child: PageStorage(bucket: _bucket, child: widget.child),
          ),
        ],
      ),
    );
  }

  int currentTabIndex = 0;

  void setcurrentSideMenuTab(int routeIndex, BuildContext context) {
    currentTabIndex = routeIndex;

    switch (routeIndex) {
      case 0:
        context.go(RouteNames.dashboard);
        break;
      case 1:
        context.go(RouteNames.tracking);
        break;
      case 2:
        context.go(RouteNames.lead);
        break;
      case 3:
        context.go(RouteNames.followup);
        break;
      case 4:
        context.go(RouteNames.activities);
        break;
      case 5:
        context.go(RouteNames.sales);
        break;
      case 6:
        context.go(RouteNames.students);
        break;
      case 7:
        context.go(RouteNames.fee);
        break;
      case 8:
        context.go(RouteNames.courses);
        break;
      case 9:
        context.go(RouteNames.contents);
        break;
      case 10:
        context.go(RouteNames.integration);
        break;
      case 11:
        context.go(RouteNames.alert);
        break;

    }
  }
}
