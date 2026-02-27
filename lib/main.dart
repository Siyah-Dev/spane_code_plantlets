import 'package:flutter/material.dart';
import 'package:plantlets/core/routes/app_routes.dart';
import 'package:plantlets/features/splash/presentation/providers/splash_screen_provider.dart';
import 'package:provider/provider.dart';
import 'core/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SplashScreenProvider()),
      ],
      child: MaterialApp.router(
        title: 'Plantlets',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        routerConfig: AppRoutes.router,
      ),
    );
  }
}
