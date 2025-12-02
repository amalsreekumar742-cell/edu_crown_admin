import 'package:admin/feature/dashboard/presentation/view/admin_dashboard.dart';
import 'package:admin/feature/login/presentation/provider/login_provider.dart';
import 'package:admin/feature/login/presentation/view/login.dart';
import 'package:admin/feature/sidemenubar/presentation/view/admin_sidebar.dart';
import 'package:admin/go_route.dart/route_names.dart';

import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>();

class RouteConfig {

  static  GoRouter approute = GoRouter(
    navigatorKey: rootNavigatorKey,
  initialLocation: RouteNames.login,

  redirect: (BuildContext context, GoRouterState state){
    final loginprovider=context.read<AdminProvider>();
    final isloggin=loginprovider.loggedIn;

 final isLoginRoute = state.uri.path.startsWith(RouteNames.login);
      

      if (!isloggin && !isLoginRoute) {
        return '${RouteNames.login}?from=${Uri.encodeComponent(state.uri.path)}';
      }

      if (isloggin && isLoginRoute) {
        final fromPath = state.uri.queryParameters['from'];
        if (fromPath != null && fromPath.isNotEmpty) {
          return Uri.decodeComponent(fromPath);
        }
        return RouteNames.dashboard;
      }

      return null;

  },
  
  routes:<RouteBase> [
     GoRoute(
      path: RouteNames.login,


      builder: (context, state) {
      final from =  state.uri.queryParameters['from']?? RouteNames.dashboard;
        return LoginPage(redirectPath: from,);
      },),

    ShellRoute(

     navigatorKey:shellNavigatorKey ,
     builder: (BuildContext context, GoRouterState state, Widget child) {
      return SideNavigationBar(child: child
      ,);
       
     },

      
      routes: <RouteBase>[




         GoRoute(
      path: RouteNames.dashboard,
      builder: (context, state) => Admindash(),),


       GoRoute(
      path: RouteNames.tracking,
      builder: (context, state) => Admindash(),),

       GoRoute(
      path: RouteNames.lead,
      builder: (context, state) => Admindash(),),

       GoRoute(
      path: RouteNames.followup,
      builder: (context, state) => Admindash(),),

       GoRoute(
      path: RouteNames.activities,
      builder: (context, state) => Admindash(),),


       GoRoute(
      path: RouteNames.sales,
      builder: (context, state) => Admindash(),),

       GoRoute(
      path: RouteNames.students,
      builder: (context, state) => Admindash(),),


       GoRoute(
      path: RouteNames.fee,
      builder: (context, state) => Admindash(),),


       GoRoute(
      path: RouteNames.courses,
      builder: (context, state) => Admindash(),),

       GoRoute(
      path: RouteNames.contents,
      builder: (context, state) => Admindash(),),


       GoRoute(
      path: RouteNames.integration,
      builder: (context, state) => Admindash(),),


       GoRoute(
      path: RouteNames.alert,
      builder: (context, state) => Admindash(),),

      

      



      ]),
   



  ]);

  
}




