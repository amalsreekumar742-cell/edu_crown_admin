import 'package:admin/feature/login/presentation/provider/login_provider.dart';
import 'package:admin/feature/sidemenubar/presentation/provider/provider.dart';
import 'package:admin/general/core/di/injection.dart';
import 'package:admin/go_route.dart/route_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  runApp(const MainBootstrap());
}

class MainBootstrap extends StatelessWidget {
  const MainBootstrap({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
      
        ChangeNotifierProvider(
          create: (_) => SidebarProvider(),
        ),

      
        ChangeNotifierProvider(
          create: (_) => AdminProvider(
             
          ),
        ),
      ],

      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RouteConfig.approute,
      debugShowCheckedModeBanner: false,
    );
  }
}
