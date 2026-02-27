import 'package:flutter/material.dart';
import 'package:plantlets/core/constants/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            stops: [0.0, 0.3, 0.8, 1.0],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.splashBlue,
              AppColors.onPrimary,
              AppColors.onPrimary,
              AppColors.splashBlue,
            ],
          ),
        ),
        child: Center(
          child: Image.asset(
            'assets/images/logo.png',
            width: 180,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(
                Icons.eco_outlined,
                size: 72,
                color: AppColors.primary,
              );
            },
          ),
        ),
      ),
    );
  }
}
